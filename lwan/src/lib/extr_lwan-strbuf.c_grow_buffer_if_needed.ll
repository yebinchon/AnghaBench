; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-strbuf.c_grow_buffer_if_needed.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-strbuf.c_grow_buffer_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_strbuf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_strbuf*, i64)* @grow_buffer_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_buffer_if_needed(%struct.lwan_strbuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_strbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.lwan_strbuf* %0, %struct.lwan_strbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %11 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @STATIC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, 1
  %19 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %20 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @max(i64 %18, i32 %21)
  %23 = call i64 @align_size(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @UNLIKELY(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %116

31:                                               ; preds = %16
  %32 = load i64, i64* %6, align 8
  %33 = call i8* @malloc(i64 %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @UNLIKELY(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %116

41:                                               ; preds = %31
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %44 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %48 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i8* %42, i32 %46, i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %53 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* @STATIC, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %61 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %66 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  store i32 1, i32* %3, align 4
  br label %116

68:                                               ; preds = %2
  %69 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %70 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %75 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @lwan_nextpow2(i32 %76)
  %78 = load i64, i64* %5, align 8
  %79 = icmp ult i64 %77, %78
  br label %80

80:                                               ; preds = %73, %68
  %81 = phi i1 [ true, %68 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @UNLIKELY(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %80
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, 1
  %88 = call i64 @align_size(i64 %87)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @UNLIKELY(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %116

96:                                               ; preds = %85
  %97 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %98 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i8* @realloc(i8* %100, i64 %101)
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ne i8* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @UNLIKELY(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %116

110:                                              ; preds = %96
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %113 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %80
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %109, %95, %41, %40, %30
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @align_size(i64) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @lwan_nextpow2(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
