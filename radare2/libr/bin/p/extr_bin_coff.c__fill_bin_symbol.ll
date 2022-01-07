; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_coff.c__fill_bin_symbol.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_coff.c__fill_bin_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.r_bin_coff_obj = type { %struct.TYPE_8__*, %struct.coff_symbol*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.coff_symbol = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@R_BIN_TYPE_FUNC_STR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@R_BIN_TYPE_SECTION_STR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"STATIC\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.r_bin_coff_obj*, i32, %struct.TYPE_9__**)* @_fill_bin_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fill_bin_symbol(%struct.TYPE_10__* %0, %struct.r_bin_coff_obj* %1, i32 %2, %struct.TYPE_9__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.r_bin_coff_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.coff_symbol*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.r_bin_coff_obj* %1, %struct.r_bin_coff_obj** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %9, align 8
  %13 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %10, align 8
  store %struct.coff_symbol* null, %struct.coff_symbol** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %20 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %147

25:                                               ; preds = %17
  %26 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %27 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %26, i32 0, i32 1
  %28 = load %struct.coff_symbol*, %struct.coff_symbol** %27, align 8
  %29 = icmp ne %struct.coff_symbol* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %147

31:                                               ; preds = %25
  %32 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %33 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %32, i32 0, i32 1
  %34 = load %struct.coff_symbol*, %struct.coff_symbol** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %34, i64 %36
  store %struct.coff_symbol* %37, %struct.coff_symbol** %11, align 8
  %38 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %39 = load %struct.coff_symbol*, %struct.coff_symbol** %11, align 8
  %40 = call i8* @r_coff_symbol_name(%struct.r_bin_coff_obj* %38, %struct.coff_symbol* %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %147

44:                                               ; preds = %31
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @strdup(i8* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.coff_symbol*, %struct.coff_symbol** %11, align 8
  %54 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %88 [
    i32 130, label %56
    i32 131, label %60
    i32 129, label %63
    i32 132, label %67
    i32 128, label %85
  ]

56:                                               ; preds = %44
  %57 = load i8*, i8** @R_BIN_TYPE_FUNC_STR, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %98

60:                                               ; preds = %44
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  br label %98

63:                                               ; preds = %44
  %64 = load i8*, i8** @R_BIN_TYPE_SECTION_STR, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %98

67:                                               ; preds = %44
  %68 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %69 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %68, i32 0, i32 1
  %70 = load %struct.coff_symbol*, %struct.coff_symbol** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %70, i64 %72
  %74 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i8*, i8** @R_BIN_TYPE_FUNC_STR, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %84

81:                                               ; preds = %67
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %83, align 8
  br label %84

84:                                               ; preds = %81, %77
  br label %98

85:                                               ; preds = %44
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %87, align 8
  br label %98

88:                                               ; preds = %44
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.coff_symbol*, %struct.coff_symbol** %11, align 8
  %92 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sdb_fmt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = call i8* @r_str_constpool_get(i32* %90, i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %88, %85, %84, %63, %60, %56
  %99 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %100 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %99, i32 0, i32 1
  %101 = load %struct.coff_symbol*, %struct.coff_symbol** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %101, i64 %103
  %105 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %109 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = icmp slt i64 %107, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %98
  %115 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %116 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %115, i32 0, i32 1
  %117 = load %struct.coff_symbol*, %struct.coff_symbol** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %117, i64 %119
  %121 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %114
  %125 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %7, align 8
  %126 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load %struct.coff_symbol*, %struct.coff_symbol** %11, align 8
  %129 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.coff_symbol*, %struct.coff_symbol** %11, align 8
  %137 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %124, %114, %98
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  store i32 4, i32* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  store i32 1, i32* %5, align 4
  br label %147

147:                                              ; preds = %142, %43, %30, %24
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i8* @r_coff_symbol_name(%struct.r_bin_coff_obj*, %struct.coff_symbol*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_constpool_get(i32*, i32) #1

declare dso_local i32 @sdb_fmt(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
