
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hashCtl ;
struct TYPE_8__ {int pagesPerBuffer; int levelStep; int freeBlocksLen; long* freeBlocks; int buffersOnLevelsLen; int loadedBuffersLen; int rootlevel; scalar_t__ loadedBuffersCount; int ** loadedBuffers; int ** buffersOnLevels; void* bufferEmptyingQueue; int nodeBuffersTab; void* context; scalar_t__ nFreeBlocks; scalar_t__ nFileBlocks; int pfile; } ;
struct TYPE_7__ {int keysize; int entrysize; void* hcxt; } ;
typedef int List ;
typedef TYPE_1__ HASHCTL ;
typedef int GISTNodeBuffer ;
typedef TYPE_2__ GISTBuildBuffers ;
typedef int BlockNumber ;


 int BufFileCreateTemp (int) ;
 void* CurrentMemoryContext ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 void* NIL ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_2__* palloc (int) ;

GISTBuildBuffers *
gistInitBuildBuffers(int pagesPerBuffer, int levelStep, int maxLevel)
{
 GISTBuildBuffers *gfbb;
 HASHCTL hashCtl;

 gfbb = palloc(sizeof(GISTBuildBuffers));
 gfbb->pagesPerBuffer = pagesPerBuffer;
 gfbb->levelStep = levelStep;





 gfbb->pfile = BufFileCreateTemp(0);
 gfbb->nFileBlocks = 0;


 gfbb->nFreeBlocks = 0;
 gfbb->freeBlocksLen = 32;
 gfbb->freeBlocks = (long *) palloc(gfbb->freeBlocksLen * sizeof(long));





 gfbb->context = CurrentMemoryContext;





 memset(&hashCtl, 0, sizeof(hashCtl));
 hashCtl.keysize = sizeof(BlockNumber);
 hashCtl.entrysize = sizeof(GISTNodeBuffer);
 hashCtl.hcxt = CurrentMemoryContext;
 gfbb->nodeBuffersTab = hash_create("gistbuildbuffers",
            1024,
            &hashCtl,
            HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 gfbb->bufferEmptyingQueue = NIL;





 gfbb->buffersOnLevelsLen = 1;
 gfbb->buffersOnLevels = (List **) palloc(sizeof(List *) *
            gfbb->buffersOnLevelsLen);
 gfbb->buffersOnLevels[0] = NIL;





 gfbb->loadedBuffersLen = 32;
 gfbb->loadedBuffers = (GISTNodeBuffer **) palloc(gfbb->loadedBuffersLen *
              sizeof(GISTNodeBuffer *));
 gfbb->loadedBuffersCount = 0;

 gfbb->rootlevel = maxLevel;

 return gfbb;
}
