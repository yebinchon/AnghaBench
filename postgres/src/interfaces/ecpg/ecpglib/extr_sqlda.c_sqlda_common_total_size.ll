; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_sqlda.c_sqlda_common_total_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_sqlda.c_sqlda_common_total_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i64)* @sqlda_common_total_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sqlda_common_total_size(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @PQnfields(i32* %16)
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %117, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %120

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @PQftype(i32* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sqlda_dynamic_type(i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %104 [
    i32 135, label %29
    i32 128, label %29
    i32 140, label %32
    i32 131, label %32
    i32 138, label %35
    i32 130, label %35
    i32 137, label %38
    i32 129, label %38
    i32 146, label %41
    i32 141, label %44
    i32 142, label %47
    i32 143, label %50
    i32 136, label %53
    i32 144, label %94
    i32 133, label %97
    i32 139, label %100
    i32 145, label %103
    i32 132, label %103
    i32 134, label %103
  ]

29:                                               ; preds = %22, %22
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @ecpg_sqlda_align_add_size(i64 %30, i32 2, i64 2, i64* %8, i64* %11)
  br label %115

32:                                               ; preds = %22, %22
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @ecpg_sqlda_align_add_size(i64 %33, i32 4, i64 4, i64* %8, i64* %11)
  br label %115

35:                                               ; preds = %22, %22
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @ecpg_sqlda_align_add_size(i64 %36, i32 8, i64 8, i64* %8, i64* %11)
  br label %115

38:                                               ; preds = %22, %22
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @ecpg_sqlda_align_add_size(i64 %39, i32 8, i64 8, i64* %8, i64* %11)
  br label %115

41:                                               ; preds = %22
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @ecpg_sqlda_align_add_size(i64 %42, i32 4, i64 4, i64* %8, i64* %11)
  br label %115

44:                                               ; preds = %22
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @ecpg_sqlda_align_add_size(i64 %45, i32 4, i64 4, i64* %8, i64* %11)
  br label %115

47:                                               ; preds = %22
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @ecpg_sqlda_align_add_size(i64 %48, i32 8, i64 8, i64* %8, i64* %11)
  br label %115

50:                                               ; preds = %22
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @ecpg_sqlda_align_add_size(i64 %51, i32 4, i64 4, i64* %8, i64* %11)
  br label %115

53:                                               ; preds = %22
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @ecpg_sqlda_align_add_size(i64 %54, i32 8, i64 24, i64* %8, i64* %11)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @PQgetisnull(i32* %56, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %53
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i8* @PQgetvalue(i32* %62, i32 %63, i32 %64)
  store i8* %65, i8** %13, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call %struct.TYPE_4__* @PGTYPESnumeric_from_asc(i8* %66, i32* null)
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %14, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %115

71:                                               ; preds = %61
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = call i32 @ecpg_sqlda_align_add_size(i64 %77, i32 4, i64 %88, i64* %8, i64* %11)
  br label %90

90:                                               ; preds = %76, %71
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %92 = call i32 @PGTYPESnumeric_free(%struct.TYPE_4__* %91)
  br label %93

93:                                               ; preds = %90, %53
  br label %115

94:                                               ; preds = %22
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @ecpg_sqlda_align_add_size(i64 %95, i32 4, i64 4, i64* %8, i64* %11)
  br label %115

97:                                               ; preds = %22
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @ecpg_sqlda_align_add_size(i64 %98, i32 4, i64 4, i64* %8, i64* %11)
  br label %115

100:                                              ; preds = %22
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @ecpg_sqlda_align_add_size(i64 %101, i32 4, i64 4, i64* %8, i64* %11)
  br label %115

103:                                              ; preds = %22, %22, %22
  br label %104

104:                                              ; preds = %22, %103
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i8* @PQgetvalue(i32* %105, i32 %106, i32 %107)
  %109 = call i32 @strlen(i8* %108)
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @ecpg_sqlda_align_add_size(i64 %112, i32 4, i64 %113, i64* %8, i64* %11)
  br label %115

115:                                              ; preds = %104, %100, %97, %94, %93, %70, %50, %47, %44, %41, %38, %35, %32, %29
  %116 = load i64, i64* %11, align 8
  store i64 %116, i64* %8, align 8
  br label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %18

120:                                              ; preds = %18
  %121 = load i64, i64* %8, align 8
  ret i64 %121
}

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @sqlda_dynamic_type(i32, i32) #1

declare dso_local i32 @PQftype(i32*, i32) #1

declare dso_local i32 @ecpg_sqlda_align_add_size(i64, i32, i64, i64*, i64*) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @PGTYPESnumeric_from_asc(i8*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_free(%struct.TYPE_4__*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
