; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_moresubs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_moresubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i64, %struct.subre**, %struct.subre** }
%struct.subre = type { i32 }

@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, i32)* @moresubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moresubs(%struct.vars* %0, i32 %1) #0 {
  %3 = alloca %struct.vars*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subre**, align 8
  %6 = alloca i64, align 8
  store %struct.vars* %0, %struct.vars** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load %struct.vars*, %struct.vars** %3, align 8
  %13 = getelementptr inbounds %struct.vars, %struct.vars* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i1 [ false, %2 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 3
  %23 = udiv i64 %22, 2
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  %25 = load %struct.vars*, %struct.vars** %3, align 8
  %26 = getelementptr inbounds %struct.vars, %struct.vars* %25, i32 0, i32 1
  %27 = load %struct.subre**, %struct.subre*** %26, align 8
  %28 = load %struct.vars*, %struct.vars** %3, align 8
  %29 = getelementptr inbounds %struct.vars, %struct.vars* %28, i32 0, i32 2
  %30 = load %struct.subre**, %struct.subre*** %29, align 8
  %31 = icmp eq %struct.subre** %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %16
  %33 = load i64, i64* %6, align 8
  %34 = mul i64 %33, 8
  %35 = call i64 @MALLOC(i64 %34)
  %36 = inttoptr i64 %35 to %struct.subre**
  store %struct.subre** %36, %struct.subre*** %5, align 8
  %37 = load %struct.subre**, %struct.subre*** %5, align 8
  %38 = icmp ne %struct.subre** %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.subre**, %struct.subre*** %5, align 8
  %41 = call i32 @VS(%struct.subre** %40)
  %42 = load %struct.vars*, %struct.vars** %3, align 8
  %43 = getelementptr inbounds %struct.vars, %struct.vars* %42, i32 0, i32 1
  %44 = load %struct.subre**, %struct.subre*** %43, align 8
  %45 = call i32 @VS(%struct.subre** %44)
  %46 = load %struct.vars*, %struct.vars** %3, align 8
  %47 = getelementptr inbounds %struct.vars, %struct.vars* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i32 %41, i32 %45, i32 %50)
  br label %52

52:                                               ; preds = %39, %32
  br label %61

53:                                               ; preds = %16
  %54 = load %struct.vars*, %struct.vars** %3, align 8
  %55 = getelementptr inbounds %struct.vars, %struct.vars* %54, i32 0, i32 1
  %56 = load %struct.subre**, %struct.subre*** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = mul i64 %57, 8
  %59 = call i64 @REALLOC(%struct.subre** %56, i64 %58)
  %60 = inttoptr i64 %59 to %struct.subre**
  store %struct.subre** %60, %struct.subre*** %5, align 8
  br label %61

61:                                               ; preds = %53, %52
  %62 = load %struct.subre**, %struct.subre*** %5, align 8
  %63 = icmp eq %struct.subre** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @REG_ESPACE, align 4
  %66 = call i32 @ERR(i32 %65)
  br label %109

67:                                               ; preds = %61
  %68 = load %struct.subre**, %struct.subre*** %5, align 8
  %69 = load %struct.vars*, %struct.vars** %3, align 8
  %70 = getelementptr inbounds %struct.vars, %struct.vars* %69, i32 0, i32 1
  store %struct.subre** %68, %struct.subre*** %70, align 8
  %71 = load %struct.vars*, %struct.vars** %3, align 8
  %72 = getelementptr inbounds %struct.vars, %struct.vars* %71, i32 0, i32 1
  %73 = load %struct.subre**, %struct.subre*** %72, align 8
  %74 = load %struct.vars*, %struct.vars** %3, align 8
  %75 = getelementptr inbounds %struct.vars, %struct.vars* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.subre*, %struct.subre** %73, i64 %76
  store %struct.subre** %77, %struct.subre*** %5, align 8
  br label %78

78:                                               ; preds = %86, %67
  %79 = load %struct.vars*, %struct.vars** %3, align 8
  %80 = getelementptr inbounds %struct.vars, %struct.vars* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.subre**, %struct.subre*** %5, align 8
  store %struct.subre* null, %struct.subre** %85, align 8
  br label %86

86:                                               ; preds = %84
  %87 = load %struct.subre**, %struct.subre*** %5, align 8
  %88 = getelementptr inbounds %struct.subre*, %struct.subre** %87, i32 1
  store %struct.subre** %88, %struct.subre*** %5, align 8
  %89 = load %struct.vars*, %struct.vars** %3, align 8
  %90 = getelementptr inbounds %struct.vars, %struct.vars* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %78

93:                                               ; preds = %78
  %94 = load %struct.vars*, %struct.vars** %3, align 8
  %95 = getelementptr inbounds %struct.vars, %struct.vars* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.vars*, %struct.vars** %3, align 8
  %104 = getelementptr inbounds %struct.vars, %struct.vars* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  br label %109

109:                                              ; preds = %93, %64
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MALLOC(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @VS(%struct.subre**) #1

declare dso_local i64 @REALLOC(%struct.subre**, i64) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
