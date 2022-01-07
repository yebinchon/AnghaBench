; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_json.c_emit_string.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_json.c_emit_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_string(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @utf8_validate(i8* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @sb_need(%struct.TYPE_4__* %16, i32 14)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  store i8 34, i8* %21, align 1
  br label %23

23:                                               ; preds = %151, %2
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %160

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i8, i8* %29, align 1
  store i8 %31, i8* %7, align 1
  %32 = load i8, i8* %7, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %69 [
    i32 34, label %34
    i32 92, label %39
    i32 8, label %44
    i32 12, label %49
    i32 10, label %54
    i32 13, label %59
    i32 9, label %64
  ]

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  store i8 92, i8* %35, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  store i8 34, i8* %37, align 1
  br label %151

39:                                               ; preds = %28
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  store i8 92, i8* %40, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  store i8 92, i8* %42, align 1
  br label %151

44:                                               ; preds = %28
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  store i8 92, i8* %45, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 98, i8* %47, align 1
  br label %151

49:                                               ; preds = %28
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  store i8 92, i8* %50, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  store i8 102, i8* %52, align 1
  br label %151

54:                                               ; preds = %28
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 92, i8* %55, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  store i8 110, i8* %57, align 1
  br label %151

59:                                               ; preds = %28
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  store i8 92, i8* %60, align 1
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  store i8 114, i8* %62, align 1
  br label %151

64:                                               ; preds = %28
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  store i8 92, i8* %65, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 116, i8* %67, align 1
  br label %151

69:                                               ; preds = %28
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i64 @utf8_validate_cz(i8* %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = call i32 @assert(i32 0)
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  store i8 -17, i8* %78, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  store i8 -65, i8* %80, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  store i8 -67, i8* %82, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  br label %150

86:                                               ; preds = %69
  %87 = load i8, i8* %7, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp slt i32 %88, 31
  br i1 %89, label %90, label %137

90:                                               ; preds = %86
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @utf8_read_char(i8* %91, i32* %9)
  %93 = load i8*, i8** %5, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = icmp sle i32 %96, 65535
  br i1 %97, label %98, label %109

98:                                               ; preds = %90
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 92, i8* %99, align 1
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  store i8 117, i8* %101, align 1
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @write_hex16(i8* %103, i32 %104)
  %106 = load i8*, i8** %6, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %6, align 8
  br label %136

109:                                              ; preds = %90
  %110 = load i32, i32* %9, align 4
  %111 = icmp sle i32 %110, 1114111
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @to_surrogate_pair(i32 %114, i32* %10, i32* %11)
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  store i8 92, i8* %116, align 1
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  store i8 117, i8* %118, align 1
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @write_hex16(i8* %120, i32 %121)
  %123 = load i8*, i8** %6, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %6, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  store i8 92, i8* %126, align 1
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  store i8 117, i8* %128, align 1
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @write_hex16(i8* %130, i32 %131)
  %133 = load i8*, i8** %6, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %6, align 8
  br label %136

136:                                              ; preds = %109, %98
  br label %149

137:                                              ; preds = %86
  br label %138

138:                                              ; preds = %142, %137
  %139 = load i64, i64* %8, align 8
  %140 = add i64 %139, -1
  store i64 %140, i64* %8, align 8
  %141 = icmp ne i64 %139, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %5, align 8
  %145 = load i8, i8* %143, align 1
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %6, align 8
  store i8 %145, i8* %146, align 1
  br label %138

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %76
  br label %151

151:                                              ; preds = %150, %64, %59, %54, %49, %44, %39, %34
  %152 = load i8*, i8** %6, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %156 = call i32 @sb_need(%struct.TYPE_4__* %155, i32 14)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %6, align 8
  br label %23

160:                                              ; preds = %23
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %6, align 8
  store i8 34, i8* %161, align 1
  %163 = load i8*, i8** %6, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @utf8_validate(i8*) #1

declare dso_local i32 @sb_need(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @utf8_validate_cz(i8*) #1

declare dso_local i32 @utf8_read_char(i8*, i32*) #1

declare dso_local i32 @write_hex16(i8*, i32) #1

declare dso_local i32 @to_surrogate_pair(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
