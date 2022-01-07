; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_base64.c_base64_decode_xmlrpc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_base64.c_base64_decode_xmlrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_st = type { i32 }

@dtable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @base64_decode_xmlrpc(%struct.buffer_st* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_st*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca [4 x i8], align 1
  %13 = alloca [3 x i8], align 1
  %14 = alloca i32, align 4
  store %struct.buffer_st* %0, %struct.buffer_st** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.buffer_st*, %struct.buffer_st** %4, align 8
  %16 = call i32 @buffer_new(%struct.buffer_st* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %25, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 255
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32*, i32** @dtable, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 128, i32* %24, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %17

28:                                               ; preds = %17
  store i32 65, i32* %7, align 4
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 90
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 65
  %35 = add nsw i32 0, %34
  %36 = load i32*, i32** @dtable, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %29

43:                                               ; preds = %29
  store i32 97, i32* %7, align 4
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 122
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 97
  %50 = add nsw i32 26, %49
  %51 = load i32*, i32** @dtable, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %44

58:                                               ; preds = %44
  store i32 48, i32* %7, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp sle i32 %60, 57
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 48
  %65 = add nsw i32 52, %64
  %66 = load i32*, i32** @dtable, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %59

73:                                               ; preds = %59
  %74 = load i32*, i32** @dtable, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 43
  store i32 62, i32* %75, align 4
  %76 = load i32*, i32** @dtable, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 47
  store i32 63, i32* %77, align 4
  %78 = load i32*, i32** @dtable, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 61
  store i32 0, i32* %79, align 4
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %73, %205
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %139, %80
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %142

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %106
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 1, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %85
  %97 = load i32, i32* %14, align 4
  %98 = call i64 @isspace(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, 13
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %100, %96
  br label %85

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %206

112:                                              ; preds = %108
  %113 = load i32*, i32** @dtable, align 8
  %114 = load i32, i32* %14, align 4
  %115 = trunc i32 %114 to i8
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 128
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %7, align 4
  br label %139

124:                                              ; preds = %112
  %125 = load i32, i32* %14, align 4
  %126 = trunc i32 %125 to i8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %128
  store i8 %126, i8* %129, align 1
  %130 = load i32*, i32** @dtable, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 %137
  store i8 %135, i8* %138, align 1
  br label %139

139:                                              ; preds = %124, %121
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %81

142:                                              ; preds = %81
  %143 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl i32 %145, 2
  %147 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = ashr i32 %149, 4
  %151 = or i32 %146, %150
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  store i8 %152, i8* %153, align 1
  %154 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl i32 %156, 4
  %158 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = ashr i32 %160, 2
  %162 = or i32 %157, %161
  %163 = trunc i32 %162 to i8
  %164 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  store i8 %163, i8* %164, align 1
  %165 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, 6
  %169 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 3
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %168, %171
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 2
  store i8 %173, i8* %174, align 1
  %175 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 61
  br i1 %178, label %179, label %180

179:                                              ; preds = %142
  br label %187

180:                                              ; preds = %142
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %183, 61
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 2, i32 3
  br label %187

187:                                              ; preds = %180, %179
  %188 = phi i32 [ 1, %179 ], [ %186, %180 ]
  store i32 %188, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %193, %187
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %189
  %194 = load %struct.buffer_st*, %struct.buffer_st** %4, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = call i32 @buffer_add(%struct.buffer_st* %194, i8 zeroext %199)
  br label %189

201:                                              ; preds = %189
  %202 = load i32, i32* %7, align 4
  %203 = icmp slt i32 %202, 3
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %206

205:                                              ; preds = %201
  br label %80

206:                                              ; preds = %204, %111
  ret void
}

declare dso_local i32 @buffer_new(%struct.buffer_st*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @buffer_add(%struct.buffer_st*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
