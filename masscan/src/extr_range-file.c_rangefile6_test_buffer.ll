; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangefile6_test_buffer.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangefile6_test_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.RangeParser = type { i32 }

@__const.rangefile6_test_buffer.out_begin = private unnamed_addr constant %struct.TYPE_4__ { i32 1, i32 2, i32 0, i32 0 }, align 4
@__const.rangefile6_test_buffer.out_end = private unnamed_addr constant %struct.TYPE_4__ { i32 1, i32 2, i32 0, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32)* @rangefile6_test_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangefile6_test_buffer(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.RangeParser*, align 8
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %23 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.TYPE_4__* @__const.rangefile6_test_buffer.out_begin to i8*), i64 16, i1 false)
  %24 = bitcast %struct.TYPE_4__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.TYPE_4__* @__const.rangefile6_test_buffer.out_end to i8*), i64 16, i1 false)
  store i32 0, i32* %20, align 4
  %25 = call %struct.RangeParser* (...) @rangeparse_create()
  store %struct.RangeParser* %25, %struct.RangeParser** %14, align 8
  %26 = load %struct.RangeParser*, %struct.RangeParser** %14, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @rangeparse_next(%struct.RangeParser* %26, i8* %27, i64* %13, i64 %28, i32* %17, i32* %18)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %113

33:                                               ; preds = %5
  %34 = load %struct.RangeParser*, %struct.RangeParser** %14, align 8
  %35 = call i32 @rangeparse_getipv6(%struct.RangeParser* %34, %struct.TYPE_4__* %15, %struct.TYPE_4__* %16)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %33
  store i32 1, i32* %6, align 4
  br label %113

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %46
  store i32 1, i32* %6, align 4
  br label %113

57:                                               ; preds = %51
  %58 = load %struct.RangeParser*, %struct.RangeParser** %14, align 8
  %59 = call i32 @rangeparse_destroy(%struct.RangeParser* %58)
  %60 = call %struct.RangeParser* (...) @rangeparse_create()
  store %struct.RangeParser* %60, %struct.RangeParser** %14, align 8
  store i64 0, i64* %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 2, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 2, i32* %64, align 4
  store i32 0, i32* %20, align 4
  br label %65

65:                                               ; preds = %105, %76, %57
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %65
  %70 = load %struct.RangeParser*, %struct.RangeParser** %14, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @rangeparse_next(%struct.RangeParser* %70, i8* %71, i64* %13, i64 %72, i32* %17, i32* %18)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %65

77:                                               ; preds = %69
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 1, i32* %6, align 4
  br label %113

81:                                               ; preds = %77
  store i32 1, i32* %20, align 4
  %82 = load %struct.RangeParser*, %struct.RangeParser** %14, align 8
  %83 = call i32 @rangeparse_getipv6(%struct.RangeParser* %82, %struct.TYPE_4__* %15, %struct.TYPE_4__* %16)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %81
  store i32 1, i32* %6, align 4
  br label %113

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %94
  store i32 1, i32* %6, align 4
  br label %113

105:                                              ; preds = %99
  br label %65

106:                                              ; preds = %65
  %107 = load %struct.RangeParser*, %struct.RangeParser** %14, align 8
  %108 = call i32 @rangeparse_destroy(%struct.RangeParser* %107)
  %109 = load i32, i32* %20, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  store i32 1, i32* %6, align 4
  br label %113

112:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %111, %104, %93, %80, %56, %45, %32
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.RangeParser* @rangeparse_create(...) #1

declare dso_local i32 @rangeparse_next(%struct.RangeParser*, i8*, i64*, i64, i32*, i32*) #1

declare dso_local i32 @rangeparse_getipv6(%struct.RangeParser*, %struct.TYPE_4__*, %struct.TYPE_4__*) #1

declare dso_local i32 @rangeparse_destroy(%struct.RangeParser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
