; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdsyncfiletag.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdsyncfiletag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@InvalidBackendId = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i64 0, align 8
@EXTENSION_RETURN_NULL = common dso_local global i32 0, align 4
@EXTENSION_DONT_CHECK_SIZE = common dso_local global i32 0, align 4
@WAIT_EVENT_DATA_FILE_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdsyncfiletag(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @InvalidBackendId, align 4
  %13 = call i32 @smgropen(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @_mdfd_segpath(i32 %14, i32 %17, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @MAXPGPATH, align 4
  %25 = call i32 @strlcpy(i8* %22, i8* %23, i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @pfree(i8* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @RELSEG_SIZE, align 8
  %36 = trunc i64 %35 to i32
  %37 = mul nsw i32 %34, %36
  %38 = load i32, i32* @EXTENSION_RETURN_NULL, align 4
  %39 = load i32, i32* @EXTENSION_DONT_CHECK_SIZE, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.TYPE_5__* @_mdfd_getseg(i32 %28, i32 %31, i32 %37, i32 0, i32 %40)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %7, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = icmp eq %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WAIT_EVENT_DATA_FILE_SYNC, align 4
  %50 = call i32 @FileSync(i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %44
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @smgropen(i32, i32) #1

declare dso_local i8* @_mdfd_segpath(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local %struct.TYPE_5__* @_mdfd_getseg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @FileSync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
