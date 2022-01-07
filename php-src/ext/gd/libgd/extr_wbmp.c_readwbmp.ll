; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_wbmp.c_readwbmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_wbmp.c_readwbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@WBMP_WHITE = common dso_local global i32 0, align 4
@WBMP_BLACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readwbmp(i32 (i8*)* %0, i8* %1, %struct.TYPE_4__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32 (i8*)* %0, i32 (i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %7, align 8
  %14 = call i64 @gdMalloc(i32 24)
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %13, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %171

18:                                               ; preds = %3
  %19 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 %19(i8* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %30 = call i32 @gdFree(%struct.TYPE_4__* %29)
  store i32 -1, i32* %4, align 4
  br label %171

31:                                               ; preds = %18
  %32 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @skipheader(i32 (i8*)* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = call i32 @gdFree(%struct.TYPE_4__* %37)
  store i32 -1, i32* %4, align 4
  br label %171

39:                                               ; preds = %31
  %40 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @getmbi(i32 (i8*)* %40, i8* %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %52 = call i32 @gdFree(%struct.TYPE_4__* %51)
  store i32 -1, i32* %4, align 4
  br label %171

53:                                               ; preds = %39
  %54 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i8* @getmbi(i32 (i8*)* %54, i8* %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %66 = call i32 @gdFree(%struct.TYPE_4__* %65)
  store i32 -1, i32* %4, align 4
  br label %171

67:                                               ; preds = %53
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @overflow2(i32 4, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @overflow2(i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %73, %67
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %87 = call i32 @gdFree(%struct.TYPE_4__* %86)
  store i32 -1, i32* %4, align 4
  br label %171

88:                                               ; preds = %73
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 %92, %96
  %98 = call i64 @safe_emalloc(i64 %97, i32 4, i32 0)
  %99 = inttoptr i64 %98 to i32*
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  store i32* %99, i32** %101, align 8
  %102 = icmp eq i32* %99, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %105 = call i32 @gdFree(%struct.TYPE_4__* %104)
  store i32 -1, i32* %4, align 4
  br label %171

106:                                              ; preds = %88
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %165, %106
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %168

113:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %163, %113
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %164

120:                                              ; preds = %114
  %121 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 %121(i8* %122)
  store i32 %123, i32* %10, align 4
  store i32 7, i32* %11, align 4
  br label %124

124:                                              ; preds = %160, %120
  %125 = load i32, i32* %11, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %163

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %127
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load i32, i32* @WBMP_WHITE, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  br label %156

148:                                              ; preds = %134
  %149 = load i32, i32* @WBMP_BLACK, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  br label %156

156:                                              ; preds = %148, %140
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %156, %127
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %11, align 4
  br label %124

163:                                              ; preds = %124
  br label %114

164:                                              ; preds = %114
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %107

168:                                              ; preds = %107
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %170 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %169, %struct.TYPE_4__** %170, align 8
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %168, %103, %85, %64, %50, %36, %28, %17
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i64 @gdMalloc(i32) #1

declare dso_local i32 @gdFree(%struct.TYPE_4__*) #1

declare dso_local i64 @skipheader(i32 (i8*)*, i8*) #1

declare dso_local i8* @getmbi(i32 (i8*)*, i8*) #1

declare dso_local i64 @overflow2(i32, i32) #1

declare dso_local i64 @safe_emalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
