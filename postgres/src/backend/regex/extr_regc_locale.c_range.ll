; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_range.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvec = type { i64, i64 }
%struct.vars = type { i32 }

@REG_ERANGE = common dso_local global i32 0, align 4
@REG_ETOOBIG = common dso_local global i32 0, align 4
@REG_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvec* (%struct.vars*, i64, i64, i32)* @range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvec* @range(%struct.vars* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.cvec*, align 8
  %6 = alloca %struct.vars*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cvec*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vars* %0, %struct.vars** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @before(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @REG_ERANGE, align 4
  %24 = call i32 @ERR(i32 %23)
  store %struct.cvec* null, %struct.cvec** %5, align 8
  br label %140

25:                                               ; preds = %17, %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load %struct.vars*, %struct.vars** %6, align 8
  %30 = call %struct.cvec* @getcvec(%struct.vars* %29, i32 0, i32 1)
  store %struct.cvec* %30, %struct.cvec** %11, align 8
  %31 = call i32 (...) @NOERRN()
  %32 = load %struct.cvec*, %struct.cvec** %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @addrange(%struct.cvec* %32, i64 %33, i64 %34)
  %36 = load %struct.cvec*, %struct.cvec** %11, align 8
  store %struct.cvec* %36, %struct.cvec** %5, align 8
  br label %140

37:                                               ; preds = %25
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub nsw i64 %38, %39
  %41 = add nsw i64 %40, 1
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 100000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %37
  store i32 100000, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load %struct.vars*, %struct.vars** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.cvec* @getcvec(%struct.vars* %50, i32 %51, i32 1)
  store %struct.cvec* %52, %struct.cvec** %11, align 8
  %53 = call i32 (...) @NOERRN()
  %54 = load %struct.cvec*, %struct.cvec** %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @addrange(%struct.cvec* %54, i64 %55, i64 %56)
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %135, %49
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %138

63:                                               ; preds = %59
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @pg_wc_tolower(i64 %64)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @before(i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @before(i64 %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74, %69
  %80 = load %struct.cvec*, %struct.cvec** %11, align 8
  %81 = getelementptr inbounds %struct.cvec, %struct.cvec* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cvec*, %struct.cvec** %11, align 8
  %84 = getelementptr inbounds %struct.cvec, %struct.cvec* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @REG_ETOOBIG, align 4
  %89 = call i32 @ERR(i32 %88)
  store %struct.cvec* null, %struct.cvec** %5, align 8
  br label %140

90:                                               ; preds = %79
  %91 = load %struct.cvec*, %struct.cvec** %11, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @addchr(%struct.cvec* %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %74, %63
  %95 = load i64, i64* %12, align 8
  %96 = call i64 @pg_wc_toupper(i64 %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %94
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @before(i64 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @before(i64 %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105, %100
  %111 = load %struct.cvec*, %struct.cvec** %11, align 8
  %112 = getelementptr inbounds %struct.cvec, %struct.cvec* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.cvec*, %struct.cvec** %11, align 8
  %115 = getelementptr inbounds %struct.cvec, %struct.cvec* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* @REG_ETOOBIG, align 4
  %120 = call i32 @ERR(i32 %119)
  store %struct.cvec* null, %struct.cvec** %5, align 8
  br label %140

121:                                              ; preds = %110
  %122 = load %struct.cvec*, %struct.cvec** %11, align 8
  %123 = load i64, i64* %13, align 8
  %124 = call i32 @addchr(%struct.cvec* %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %105, %94
  %126 = load %struct.vars*, %struct.vars** %6, align 8
  %127 = getelementptr inbounds %struct.vars, %struct.vars* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @CANCEL_REQUESTED(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @REG_CANCEL, align 4
  %133 = call i32 @ERR(i32 %132)
  store %struct.cvec* null, %struct.cvec** %5, align 8
  br label %140

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %12, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %12, align 8
  br label %59

138:                                              ; preds = %59
  %139 = load %struct.cvec*, %struct.cvec** %11, align 8
  store %struct.cvec* %139, %struct.cvec** %5, align 8
  br label %140

140:                                              ; preds = %138, %131, %118, %87, %28, %22
  %141 = load %struct.cvec*, %struct.cvec** %5, align 8
  ret %struct.cvec* %141
}

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local %struct.cvec* @getcvec(%struct.vars*, i32, i32) #1

declare dso_local i32 @NOERRN(...) #1

declare dso_local i32 @addrange(%struct.cvec*, i64, i64) #1

declare dso_local i64 @pg_wc_tolower(i64) #1

declare dso_local i32 @addchr(%struct.cvec*, i64) #1

declare dso_local i64 @pg_wc_toupper(i64) #1

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
