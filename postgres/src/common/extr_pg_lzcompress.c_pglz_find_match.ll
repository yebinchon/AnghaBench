; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_pg_lzcompress.c_pglz_find_match.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_pg_lzcompress.c_pglz_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@hist_entries = common dso_local global %struct.TYPE_4__* null, align 8
@INVALID_ENTRY_PTR = common dso_local global %struct.TYPE_4__* null, align 8
@PGLZ_MAX_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i8*, i32*, i32*, i32, i32, i32)* @pglz_find_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pglz_find_match(i64* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %26 = load i64*, i64** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* %17, align 4
  %30 = call i64 @pglz_hist_idx(i8* %27, i8* %28, i32 %29)
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %19, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hist_entries, align 8
  %34 = load i64, i64* %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %18, align 8
  br label %36

36:                                               ; preds = %153, %8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @INVALID_ENTRY_PTR, align 8
  %39 = icmp ne %struct.TYPE_4__* %37, %38
  br i1 %39, label %40, label %154

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  store i8* %41, i8** %22, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %23, align 8
  %45 = load i8*, i8** %22, align 8
  %46 = load i8*, i8** %23, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %24, align 4
  %52 = icmp sge i32 %51, 4095
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %154

54:                                               ; preds = %40
  store i32 0, i32* %25, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp sge i32 %55, 16
  br i1 %56, label %57, label %100

57:                                               ; preds = %54
  %58 = load i8*, i8** %22, align 8
  %59 = load i8*, i8** %23, align 8
  %60 = load i32, i32* %20, align 4
  %61 = call i64 @memcmp(i8* %58, i8* %59, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %99

63:                                               ; preds = %57
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %25, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i8*, i8** %22, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %22, align 8
  %69 = load i32, i32* %20, align 4
  %70 = load i8*, i8** %23, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %23, align 8
  br label %73

73:                                               ; preds = %91, %63
  %74 = load i8*, i8** %22, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i8*, i8** %22, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** %23, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* @PGLZ_MAX_MATCH, align 4
  %88 = icmp slt i32 %86, %87
  br label %89

89:                                               ; preds = %85, %77, %73
  %90 = phi i1 [ false, %77 ], [ false, %73 ], [ %88, %85 ]
  br i1 %90, label %91, label %98

91:                                               ; preds = %89
  %92 = load i32, i32* %25, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %25, align 4
  %94 = load i8*, i8** %22, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %22, align 8
  %96 = load i8*, i8** %23, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %23, align 8
  br label %73

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %57
  br label %127

100:                                              ; preds = %54
  br label %101

101:                                              ; preds = %119, %100
  %102 = load i8*, i8** %22, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i8*, i8** %22, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8*, i8** %23, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* %25, align 4
  %115 = load i32, i32* @PGLZ_MAX_MATCH, align 4
  %116 = icmp slt i32 %114, %115
  br label %117

117:                                              ; preds = %113, %105, %101
  %118 = phi i1 [ false, %105 ], [ false, %101 ], [ %116, %113 ]
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = load i32, i32* %25, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %25, align 4
  %122 = load i8*, i8** %22, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %22, align 8
  %124 = load i8*, i8** %23, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %23, align 8
  br label %101

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %99
  %128 = load i32, i32* %25, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %25, align 4
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %24, align 4
  store i32 %133, i32* %21, align 4
  br label %134

134:                                              ; preds = %131, %127
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %18, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @INVALID_ENTRY_PTR, align 8
  %140 = icmp ne %struct.TYPE_4__* %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %134
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %154

146:                                              ; preds = %141
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %16, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sdiv i32 %149, 100
  %151 = load i32, i32* %15, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %146, %134
  br label %36

154:                                              ; preds = %145, %53, %36
  %155 = load i32, i32* %20, align 4
  %156 = icmp sgt i32 %155, 2
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32, i32* %20, align 4
  %159 = load i32*, i32** %13, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* %21, align 4
  %161 = load i32*, i32** %14, align 8
  store i32 %160, i32* %161, align 4
  store i32 1, i32* %9, align 4
  br label %163

162:                                              ; preds = %154
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i32, i32* %9, align 4
  ret i32 %164
}

declare dso_local i64 @pglz_hist_idx(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
