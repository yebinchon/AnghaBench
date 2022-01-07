; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_sqlda.c_ecpg_build_native_sqlda.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_sqlda.c_ecpg_build_native_sqlda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlda_struct = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"SQLDA  \00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ecpg_build_native_sqlda on line %d sqld = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sqlda_struct* @ecpg_build_native_sqlda(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sqlda_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sqlda_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @sqlda_native_total_size(i32* %14, i32 %15, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @ecpg_alloc(i64 %18, i32 %19)
  %21 = inttoptr i64 %20 to %struct.sqlda_struct*
  store %struct.sqlda_struct* %21, %struct.sqlda_struct** %10, align 8
  %22 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %23 = icmp ne %struct.sqlda_struct* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store %struct.sqlda_struct* null, %struct.sqlda_struct** %5, align 8
  br label %102

25:                                               ; preds = %4
  %26 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @memset(%struct.sqlda_struct* %26, i32 0, i64 %27)
  %29 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %30 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sprintf(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @PQnfields(i32* %33)
  %35 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %36 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %38 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %41 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ecpg_log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %45 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = add i64 32, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %53 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %97, %25
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %57 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %100

60:                                               ; preds = %54
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @PQftype(i32* %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @sqlda_dynamic_type(i32 %63, i32 %64)
  %66 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %67 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %65, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i8* @PQfname(i32* %73, i32 %74)
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %79 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %77, i32* %85, align 4
  %86 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  %87 = getelementptr inbounds %struct.sqlda_struct, %struct.sqlda_struct* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @strcpy(i32 %94, i8* %95)
  br label %97

97:                                               ; preds = %60
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %54

100:                                              ; preds = %54
  %101 = load %struct.sqlda_struct*, %struct.sqlda_struct** %10, align 8
  store %struct.sqlda_struct* %101, %struct.sqlda_struct** %5, align 8
  br label %102

102:                                              ; preds = %100, %24
  %103 = load %struct.sqlda_struct*, %struct.sqlda_struct** %5, align 8
  ret %struct.sqlda_struct* %103
}

declare dso_local i64 @sqlda_native_total_size(i32*, i32, i32) #1

declare dso_local i64 @ecpg_alloc(i64, i32) #1

declare dso_local i32 @memset(%struct.sqlda_struct*, i32, i64) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @ecpg_log(i8*, i32, i32) #1

declare dso_local i32 @sqlda_dynamic_type(i32, i32) #1

declare dso_local i32 @PQftype(i32*, i32) #1

declare dso_local i8* @PQfname(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
