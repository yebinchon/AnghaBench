; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mcore.c_mcore_anal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mcore.c_mcore_anal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"[!] mcore: bad or invalid data.\0A\00", align 1
@R_ANAL_OP_TYPE_NULL = common dso_local global i32 0, align 4
@UT64_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i64, i32*, i32, i32)* @mcore_anal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcore_anal(i32* %0, %struct.TYPE_13__* %1, i64 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %15, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @mcore_init(%struct.TYPE_12__* %14, i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %96

23:                                               ; preds = %6
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @R_ANAL_OP_TYPE_NULL, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** @UT64_MAX, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @UT64_MAX, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @UT64_MAX, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 6
  store i8* %35, i8** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i32 2, i32* %41, align 4
  %42 = call %struct.TYPE_11__* @mcore_next(%struct.TYPE_12__* %14)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %15, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %92

44:                                               ; preds = %23
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %88 [
    i32 133, label %53
    i32 132, label %53
    i32 129, label %71
    i32 131, label %84
    i32 128, label %85
    i32 130, label %85
  ]

53:                                               ; preds = %44, %44
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 2
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %59, %65
  %67 = add nsw i64 %66, 1
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %89

71:                                               ; preds = %44
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %72, %78
  %80 = add nsw i64 %79, 1
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  br label %89

84:                                               ; preds = %44
  br label %89

85:                                               ; preds = %44, %44
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  br label %89

88:                                               ; preds = %44
  br label %89

89:                                               ; preds = %88, %85, %84, %71, %53
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %91 = call i32 @mcore_free(%struct.TYPE_11__* %90)
  br label %92

92:                                               ; preds = %89, %23
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %21
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mcore_init(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i32 @eprintf(i8*) #2

declare dso_local %struct.TYPE_11__* @mcore_next(%struct.TYPE_12__*) #2

declare dso_local i32 @mcore_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
