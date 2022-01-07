
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WaitEventIO ;
__attribute__((used)) static const char *
pgstat_get_wait_io(WaitEventIO w)
{
 const char *event_name = "unknown wait event";

 switch (w)
 {
  case 195:
   event_name = "BufFileRead";
   break;
  case 194:
   event_name = "BufFileWrite";
   break;
  case 193:
   event_name = "ControlFileRead";
   break;
  case 192:
   event_name = "ControlFileSync";
   break;
  case 191:
   event_name = "ControlFileSyncUpdate";
   break;
  case 190:
   event_name = "ControlFileWrite";
   break;
  case 189:
   event_name = "ControlFileWriteUpdate";
   break;
  case 188:
   event_name = "CopyFileRead";
   break;
  case 187:
   event_name = "CopyFileWrite";
   break;
  case 186:
   event_name = "DataFileExtend";
   break;
  case 185:
   event_name = "DataFileFlush";
   break;
  case 184:
   event_name = "DataFileImmediateSync";
   break;
  case 183:
   event_name = "DataFilePrefetch";
   break;
  case 182:
   event_name = "DataFileRead";
   break;
  case 181:
   event_name = "DataFileSync";
   break;
  case 180:
   event_name = "DataFileTruncate";
   break;
  case 179:
   event_name = "DataFileWrite";
   break;
  case 178:
   event_name = "DSMFillZeroWrite";
   break;
  case 177:
   event_name = "LockFileAddToDataDirRead";
   break;
  case 176:
   event_name = "LockFileAddToDataDirSync";
   break;
  case 175:
   event_name = "LockFileAddToDataDirWrite";
   break;
  case 174:
   event_name = "LockFileCreateRead";
   break;
  case 173:
   event_name = "LockFileCreateSync";
   break;
  case 172:
   event_name = "LockFileCreateWrite";
   break;
  case 171:
   event_name = "LockFileReCheckDataDirRead";
   break;
  case 170:
   event_name = "LogicalRewriteCheckpointSync";
   break;
  case 169:
   event_name = "LogicalRewriteMappingSync";
   break;
  case 168:
   event_name = "LogicalRewriteMappingWrite";
   break;
  case 167:
   event_name = "LogicalRewriteSync";
   break;
  case 166:
   event_name = "LogicalRewriteTruncate";
   break;
  case 165:
   event_name = "LogicalRewriteWrite";
   break;
  case 164:
   event_name = "RelationMapRead";
   break;
  case 163:
   event_name = "RelationMapSync";
   break;
  case 162:
   event_name = "RelationMapWrite";
   break;
  case 161:
   event_name = "ReorderBufferRead";
   break;
  case 160:
   event_name = "ReorderBufferWrite";
   break;
  case 159:
   event_name = "ReorderLogicalMappingRead";
   break;
  case 158:
   event_name = "ReplicationSlotRead";
   break;
  case 157:
   event_name = "ReplicationSlotRestoreSync";
   break;
  case 156:
   event_name = "ReplicationSlotSync";
   break;
  case 155:
   event_name = "ReplicationSlotWrite";
   break;
  case 154:
   event_name = "SLRUFlushSync";
   break;
  case 153:
   event_name = "SLRURead";
   break;
  case 152:
   event_name = "SLRUSync";
   break;
  case 151:
   event_name = "SLRUWrite";
   break;
  case 150:
   event_name = "SnapbuildRead";
   break;
  case 149:
   event_name = "SnapbuildSync";
   break;
  case 148:
   event_name = "SnapbuildWrite";
   break;
  case 147:
   event_name = "TimelineHistoryFileSync";
   break;
  case 146:
   event_name = "TimelineHistoryFileWrite";
   break;
  case 145:
   event_name = "TimelineHistoryRead";
   break;
  case 144:
   event_name = "TimelineHistorySync";
   break;
  case 143:
   event_name = "TimelineHistoryWrite";
   break;
  case 142:
   event_name = "TwophaseFileRead";
   break;
  case 141:
   event_name = "TwophaseFileSync";
   break;
  case 140:
   event_name = "TwophaseFileWrite";
   break;
  case 139:
   event_name = "WALSenderTimelineHistoryRead";
   break;
  case 138:
   event_name = "WALBootstrapSync";
   break;
  case 137:
   event_name = "WALBootstrapWrite";
   break;
  case 136:
   event_name = "WALCopyRead";
   break;
  case 135:
   event_name = "WALCopySync";
   break;
  case 134:
   event_name = "WALCopyWrite";
   break;
  case 133:
   event_name = "WALInitSync";
   break;
  case 132:
   event_name = "WALInitWrite";
   break;
  case 131:
   event_name = "WALRead";
   break;
  case 130:
   event_name = "WALSync";
   break;
  case 129:
   event_name = "WALSyncMethodAssign";
   break;
  case 128:
   event_name = "WALWrite";
   break;


 }

 return event_name;
}
