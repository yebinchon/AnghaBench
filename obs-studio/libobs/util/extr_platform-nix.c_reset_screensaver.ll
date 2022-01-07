; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_reset_screensaver.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_reset_screensaver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"xdg-screensaver\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@__const.reset_screensaver.argv = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@environ = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to create xdg-screensaver: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @reset_screensaver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_screensaver(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x i8*]* @__const.reset_screensaver.argv to i8*), i64 24, i1 false)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %11 = load i32, i32* @environ, align 4
  %12 = call i32 @posix_spawnp(i32* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32* %9, i8** %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %20, %15
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @waitpid(i32 %17, i32* %6, i32 0)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %16

21:                                               ; preds = %16
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @LOG_WARNING, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @blog(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @posix_spawnp(i32*, i8*, i32*, i32*, i8**, i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @blog(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
