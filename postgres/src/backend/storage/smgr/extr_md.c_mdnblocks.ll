; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdnblocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdnblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32** }

@EXTENSION_FAIL = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"segment too big\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mdnblocks(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @EXTENSION_FAIL, align 4
  %12 = call i32* @mdopenfork(%struct.TYPE_6__* %9, i64 %10, i32 %11)
  store i32* %12, i32** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  store i64 %28, i64* %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %6, align 8
  br label %37

37:                                               ; preds = %71, %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @_mdnblocks(%struct.TYPE_6__* %38, i64 %39, i32* %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @RELSEG_SIZE, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @FATAL, align 4
  %47 = call i32 @elog(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %37
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @RELSEG_SIZE, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @RELSEG_SIZE, align 8
  %55 = mul i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  store i64 %57, i64* %3, align 8
  br label %72

58:                                               ; preds = %48
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32* @_mdfd_openseg(%struct.TYPE_6__* %61, i64 %62, i64 %63, i32 0)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @RELSEG_SIZE, align 8
  %70 = mul i64 %68, %69
  store i64 %70, i64* %3, align 8
  br label %72

71:                                               ; preds = %58
  br label %37

72:                                               ; preds = %67, %52
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i32* @mdopenfork(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @_mdnblocks(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @_mdfd_openseg(%struct.TYPE_6__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
