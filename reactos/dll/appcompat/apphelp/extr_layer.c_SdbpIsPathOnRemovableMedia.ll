; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbpIsPathOnRemovableMedia.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbpIsPathOnRemovableMedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.SdbpIsPathOnRemovableMedia.tmp = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid argument\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"\22%S\22 is a network path.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\22%S\22 not a full path we can operate on.\0A\00", align 1
@DRIVE_REMOVABLE = common dso_local global i64 0, align 8
@DRIVE_CDROM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SdbpIsPathOnRemovableMedia(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.SdbpIsPathOnRemovableMedia.tmp, i32 0, i32 0), i64 4, i1 false)
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UNICODE_NULL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %1
  %16 = call i32 @SHIM_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %9
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %27 [
    i32 58, label %22
    i32 92, label %23
  ]

22:                                               ; preds = %18
  br label %31

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @SHIM_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %18
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @SHIM_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %22
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %38 = call i64 @GetDriveTypeW(i8* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @DRIVE_REMOVABLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @DRIVE_CDROM, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %31
  %47 = phi i1 [ true, %31 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %27, %23, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SHIM_ERR(i8*) #2

declare dso_local i32 @SHIM_INFO(i8*, i32*) #2

declare dso_local i64 @GetDriveTypeW(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
