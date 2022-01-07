; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQescapeStringInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQescapeStringInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"incomplete multibyte character\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i8*, i64, i32*, i32, i32)* @PQescapeStringInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PQescapeStringInternal(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %17, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32*, i32** %12, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %7
  br label %29

29:                                               ; preds = %132, %57, %28
  %30 = load i64, i64* %17, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %15, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %133

39:                                               ; preds = %37
  %40 = load i8*, i8** %15, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %18, align 1
  %42 = load i8, i8* %18, align 1
  %43 = call i32 @IS_HIGHBIT_SET(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %39
  %46 = load i8, i8* %18, align 1
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @SQL_STR_DOUBLE(i8 signext %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i8, i8* %18, align 1
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %16, align 8
  store i8 %54, i8* %55, align 1
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i8, i8* %18, align 1
  %59 = load i8*, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %16, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %17, align 8
  br label %29

65:                                               ; preds = %39
  %66 = load i32, i32* %13, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @pg_encoding_mblen(i32 %66, i8* %67)
  store i32 %68, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %69

69:                                               ; preds = %90, %65
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load i64, i64* %17, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %15, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %73
  br label %93

82:                                               ; preds = %76
  %83 = load i8*, i8** %15, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %15, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %16, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i64, i64* %17, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %17, align 8
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %20, align 4
  br label %69

93:                                               ; preds = %81, %69
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %132

97:                                               ; preds = %93
  %98 = load i32*, i32** %12, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32*, i32** %12, align 8
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %97
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = icmp ne %struct.TYPE_3__* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = call i32 @libpq_gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %109 = call i32 @printfPQExpBuffer(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %102
  br label %111

111:                                              ; preds = %128, %110
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i8*, i8** %16, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = udiv i64 %120, 2
  %122 = load i64, i64* %11, align 8
  %123 = icmp uge i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %131

125:                                              ; preds = %115
  %126 = load i8*, i8** %16, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %16, align 8
  store i8 32, i8* %126, align 1
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %20, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %20, align 4
  br label %111

131:                                              ; preds = %124, %111
  br label %133

132:                                              ; preds = %93
  br label %29

133:                                              ; preds = %131, %37
  %134 = load i8*, i8** %16, align 8
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %16, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  ret i64 %139
}

declare dso_local i32 @IS_HIGHBIT_SET(i8 signext) #1

declare dso_local i64 @SQL_STR_DOUBLE(i8 signext, i32) #1

declare dso_local i32 @pg_encoding_mblen(i32, i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
