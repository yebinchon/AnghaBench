; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/tools/spiffsimg/extr_main.c_list.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/tools/spiffsimg/extr_main.c_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spiffs_dirent = type { i64, i32, i32 }

@fs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"spiffs_opendir\00", align 1
@list.types = internal constant [6 x i8] c"?fdhs\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%c %6u %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.spiffs_dirent, align 8
  %3 = alloca [5 x i8], align 1
  %4 = call i32 @SPIFFS_opendir(i32* @fs, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  br label %9

9:                                                ; preds = %12, %8
  %10 = call i64 @SPIFFS_readdir(i32* %1, %struct.spiffs_dirent* %2)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 5, i1 false)
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %15 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %2, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(i8* %14, i32 %16, i32 4)
  %18 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* @list.types, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %2, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %25 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8 signext %21, i32 %23, i8* %24)
  br label %9

26:                                               ; preds = %9
  %27 = call i32 @SPIFFS_closedir(i32* %1)
  ret void
}

declare dso_local i32 @SPIFFS_opendir(i32*, i8*, i32*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @SPIFFS_readdir(i32*, %struct.spiffs_dirent*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8 signext, i32, i8*) #1

declare dso_local i32 @SPIFFS_closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
