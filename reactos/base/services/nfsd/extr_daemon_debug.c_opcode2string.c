
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
const char* opcode2string(DWORD opcode)
{
    switch(opcode) {
    case 133: return "NFS41_SHUTDOWN";
    case 136: return "NFS41_MOUNT";
    case 130: return "NFS41_UNMOUNT";
    case 135: return "NFS41_OPEN";
    case 143: return "NFS41_CLOSE";
    case 134: return "NFS41_READ";
    case 128: return "NFS41_WRITE";
    case 137: return "NFS41_LOCK";
    case 131: return "NFS41_UNLOCK";
    case 142: return "NFS41_DIR_QUERY";
    case 139: return "NFS41_FILE_QUERY";
    case 138: return "NFS41_FILE_SET";
    case 140: return "NFS41_EA_SET";
    case 141: return "NFS41_EA_GET";
    case 132: return "NFS41_SYMLINK";
    case 129: return "NFS41_VOLUME_QUERY";
    case 145: return "NFS41_ACL_QUERY";
    case 144: return "NFS41_ACL_SET";
    default: return "UNKNOWN";
    }
}
