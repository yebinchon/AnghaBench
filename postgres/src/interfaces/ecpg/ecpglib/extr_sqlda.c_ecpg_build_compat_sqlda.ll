; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_sqlda.c_ecpg_build_compat_sqlda.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_sqlda.c_ecpg_build_compat_sqlda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlda_compat = type { i32, i64, %struct.sqlvar_compat* }
%struct.sqlvar_compat = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"ecpg_build_compat_sqlda on line %d sqld = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sqlda_compat* @ecpg_build_compat_sqlda(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sqlda_compat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sqlda_compat*, align 8
  %11 = alloca %struct.sqlvar_compat*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @sqlda_compat_total_size(i32* %16, i32 %17, i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @ecpg_alloc(i64 %20, i32 %21)
  %23 = inttoptr i64 %22 to %struct.sqlda_compat*
  store %struct.sqlda_compat* %23, %struct.sqlda_compat** %10, align 8
  %24 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %25 = icmp ne %struct.sqlda_compat* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store %struct.sqlda_compat* null, %struct.sqlda_compat** %5, align 8
  br label %122

27:                                               ; preds = %4
  %28 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @memset(%struct.sqlda_compat* %28, i32 0, i64 %29)
  %31 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %32 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %31, i64 1
  %33 = bitcast %struct.sqlda_compat* %32 to %struct.sqlvar_compat*
  store %struct.sqlvar_compat* %33, %struct.sqlvar_compat** %11, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @PQnfields(i32* %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.sqlvar_compat*, %struct.sqlvar_compat** %11, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %36, i64 %38
  %40 = bitcast %struct.sqlvar_compat* %39 to i8*
  store i8* %40, i8** %12, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %43 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @ecpg_log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %49 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.sqlvar_compat*, %struct.sqlvar_compat** %11, align 8
  %51 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %52 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %51, i32 0, i32 2
  store %struct.sqlvar_compat* %50, %struct.sqlvar_compat** %52, align 8
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %117, %27
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %56 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %120

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @PQftype(i32* %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @sqlda_dynamic_type(i32 %62, i32 %63)
  %65 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %66 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %65, i32 0, i32 2
  %67 = load %struct.sqlvar_compat*, %struct.sqlvar_compat** %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %67, i64 %69
  %71 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %70, i32 0, i32 3
  store i32 %64, i32* %71, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @PQfname(i32* %73, i32 %74)
  %76 = call i32 @strcpy(i8* %72, i32 %75)
  %77 = load i8*, i8** %12, align 8
  %78 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %79 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %78, i32 0, i32 2
  %80 = load %struct.sqlvar_compat*, %struct.sqlvar_compat** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %80, i64 %82
  %84 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %83, i32 0, i32 0
  store i8* %77, i8** %84, align 8
  %85 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %86 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %85, i32 0, i32 2
  %87 = load %struct.sqlvar_compat*, %struct.sqlvar_compat** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %87, i64 %89
  %91 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = add nsw i64 %93, 1
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %12, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @PQftype(i32* %97, i32 %98)
  %100 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %101 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %100, i32 0, i32 2
  %102 = load %struct.sqlvar_compat*, %struct.sqlvar_compat** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %102, i64 %104
  %106 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %105, i32 0, i32 2
  store i32 %99, i32* %106, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @PQfsize(i32* %107, i32 %108)
  %110 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  %111 = getelementptr inbounds %struct.sqlda_compat, %struct.sqlda_compat* %110, i32 0, i32 2
  %112 = load %struct.sqlvar_compat*, %struct.sqlvar_compat** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %112, i64 %114
  %116 = getelementptr inbounds %struct.sqlvar_compat, %struct.sqlvar_compat* %115, i32 0, i32 1
  store i32 %109, i32* %116, align 8
  br label %117

117:                                              ; preds = %59
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %53

120:                                              ; preds = %53
  %121 = load %struct.sqlda_compat*, %struct.sqlda_compat** %10, align 8
  store %struct.sqlda_compat* %121, %struct.sqlda_compat** %5, align 8
  br label %122

122:                                              ; preds = %120, %26
  %123 = load %struct.sqlda_compat*, %struct.sqlda_compat** %5, align 8
  ret %struct.sqlda_compat* %123
}

declare dso_local i64 @sqlda_compat_total_size(i32*, i32, i32) #1

declare dso_local i64 @ecpg_alloc(i64, i32) #1

declare dso_local i32 @memset(%struct.sqlda_compat*, i32, i64) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @ecpg_log(i8*, i32, i32) #1

declare dso_local i32 @sqlda_dynamic_type(i32, i32) #1

declare dso_local i32 @PQftype(i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @PQfname(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @PQfsize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
