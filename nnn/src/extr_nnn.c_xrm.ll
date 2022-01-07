; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_xrm.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_xrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"trash-put\00", align 1
@F_NORMAL = common dso_local global i32 0, align 4
@__const.xrm.rm_opts = private unnamed_addr constant [4 x i8] c"-ir\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xrm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x i8], align 1
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @F_NORMAL, align 4
  %9 = call i32 @spawn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %7, i8* null, i32* null, i32 %8)
  br label %19

10:                                               ; preds = %1
  %11 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.xrm.rm_opts, i32 0, i32 0), i64 4, i1 false)
  %12 = load i32, i32* @FALSE, align 4
  %13 = call signext i8 @confirm_force(i32 %12)
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 1
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @F_NORMAL, align 4
  %18 = call i32 @spawn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %16, i32* null, i32 %17)
  br label %19

19:                                               ; preds = %10, %6
  ret void
}

declare dso_local i32 @spawn(i8*, i8*, i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local signext i8 @confirm_force(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
