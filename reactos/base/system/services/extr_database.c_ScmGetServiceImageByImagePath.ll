; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmGetServiceImageByImagePath.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmGetServiceImageByImagePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"ScmGetServiceImageByImagePath(%S) called\0A\00", align 1
@ImageListHead = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SERVICE_IMAGE = common dso_local global i32 0, align 4
@ImageListEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Found image: '%S'\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Couldn't find a matching image\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32)* @ScmGetServiceImageByImagePath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ScmGetServiceImageByImagePath(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ImageListHead, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, @ImageListHead
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load i32, i32* @SERVICE_IMAGE, align 4
  %15 = load i32, i32* @ImageListEntry, align 4
  %16 = call %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_8__* %13, i32 %14, i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @_wcsicmp(i32 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %2, align 8
  br label %35

29:                                               ; preds = %12
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %4, align 8
  br label %9

33:                                               ; preds = %9
  %34 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %35

35:                                               ; preds = %33, %23
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %36
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @_wcsicmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
