; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_state_text.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_state_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"conn_listening\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"conn_new_cmd\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"conn_waiting\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"conn_read\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"conn_parse_cmd\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"conn_write\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"conn_nread\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"conn_swallow\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"conn_closing\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"conn_mwrite\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"conn_closed\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"conn_watch\00", align 1
@__const.state_text.statenames = private unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @state_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @state_text(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [12 x i8*], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [12 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([12 x i8*]* @__const.state_text.statenames to i8*), i64 96, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [12 x i8*], [12 x i8*]* %3, i64 0, i64 %6
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
