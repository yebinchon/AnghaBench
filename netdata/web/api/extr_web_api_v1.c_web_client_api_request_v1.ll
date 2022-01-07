; ModuleID = '/home/carl/AnghaBench/netdata/web/api/extr_web_api_v1.c_web_client_api_request_v1.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/extr_web_api_v1.c_web_client_api_request_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32 (i32*, %struct.web_client*, i64)* }
%struct.web_client = type { i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@D_WEB_CLIENT = common dso_local global i32 0, align 4
@HTTP_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@HTTP_RESP_NOT_FOUND = common dso_local global i32 0, align 4
@WEB_CLIENT_ACL_NOCHECK = common dso_local global i32 0, align 4
@api_commands = common dso_local global %struct.TYPE_4__* null, align 8

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
