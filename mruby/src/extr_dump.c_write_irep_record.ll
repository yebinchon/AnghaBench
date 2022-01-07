; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_dump.c_write_irep_record.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_dump.c_write_irep_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__** }

@MRB_DUMP_INVALID_IREP = common dso_local global i32 0, align 4
@MRB_DUMP_GENERAL_FAILURE = common dso_local global i32 0, align 4
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32*, i64*, i32)* @write_irep_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_irep_record(i32* %0, %struct.TYPE_8__* %1, i32* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %9, align 8
  store i32* %16, i32** %13, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @MRB_DUMP_INVALID_IREP, align 4
  store i32 %20, i32* %6, align 4
  br label %100

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = call i64 @get_irep_record_size_1(i32* %22, %struct.TYPE_8__* %23)
  %25 = load i64*, i64** %10, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @MRB_DUMP_GENERAL_FAILURE, align 4
  store i32 %30, i32* %6, align 4
  br label %100

31:                                               ; preds = %21
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @write_irep_header(i32* %32, %struct.TYPE_8__* %33, i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @write_iseq_block(i32* %39, %struct.TYPE_8__* %40, i32* %41, i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @write_pool_block(i32* %47, %struct.TYPE_8__* %48, i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @write_syms_block(i32* %54, %struct.TYPE_8__* %55, i32* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %88, %31
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %71, i64 %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @write_irep_record(i32* %68, %struct.TYPE_8__* %75, i32* %76, i64* %15, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @MRB_DUMP_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %6, align 4
  br label %100

84:                                               ; preds = %67
  %85 = load i64, i64* %15, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  store i32* %87, i32** %9, align 8
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %61

91:                                               ; preds = %61
  %92 = load i32*, i32** %9, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = load i64*, i64** %10, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* @MRB_DUMP_OK, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %91, %82, %29, %19
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @get_irep_record_size_1(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @write_irep_header(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @write_iseq_block(i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @write_pool_block(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @write_syms_block(i32*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
