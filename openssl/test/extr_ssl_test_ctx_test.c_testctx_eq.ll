; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssl_test_ctx_test.c_testctx_eq.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssl_test_ctx_test.c_testctx_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @testctx_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testctx_eq(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 18
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 18
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @TEST_int_eq(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %172

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 17
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TEST_int_eq(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %172

23:                                               ; preds = %14
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 16
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 16
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TEST_int_eq(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %172

32:                                               ; preds = %23
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TEST_int_eq(i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %172

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 14
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 14
  %46 = call i32 @extraconf_eq(i32* %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %172

48:                                               ; preds = %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 13
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 13
  %53 = call i32 @extraconf_eq(i32* %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %172

55:                                               ; preds = %48
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @TEST_int_eq(i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %172

64:                                               ; preds = %55
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 11
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @TEST_int_eq(i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %172

73:                                               ; preds = %64
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @TEST_int_eq(i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %172

82:                                               ; preds = %73
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @TEST_int_eq(i32 %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %172

91:                                               ; preds = %82
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @TEST_int_eq(i32 %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %172

100:                                              ; preds = %91
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @TEST_int_eq(i32 %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %172

109:                                              ; preds = %100
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @TEST_int_eq(i32 %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %172

118:                                              ; preds = %109
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @TEST_str_eq(i32 %121, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %172

127:                                              ; preds = %118
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @TEST_str_eq(i32 %130, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %127
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @TEST_str_eq(i32 %139, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %172

145:                                              ; preds = %136
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @TEST_str_eq(i32 %148, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %145
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @TEST_int_eq(i32 %157, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %154
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @TEST_int_eq(i32 %166, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %163, %154, %145, %136, %127, %118, %109, %100, %91, %82, %73, %64, %55, %48, %41, %32, %23, %14, %2
  store i32 0, i32* %3, align 4
  br label %174

173:                                              ; preds = %163
  store i32 1, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %172
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @extraconf_eq(i32*, i32*) #1

declare dso_local i32 @TEST_str_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
