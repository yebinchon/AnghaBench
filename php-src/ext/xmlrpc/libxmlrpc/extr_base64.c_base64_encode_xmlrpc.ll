; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_base64.c_base64_encode_xmlrpc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_base64.c_base64_encode_xmlrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_st = type { i32 }

@dtable = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @base64_encode_xmlrpc(%struct.buffer_st* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_st*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.buffer_st* %0, %struct.buffer_st** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.buffer_st*, %struct.buffer_st** %4, align 8
  %15 = call i32 @buffer_new(%struct.buffer_st* %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %35, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 26
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 65, %20
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** @dtable, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 %22, i8* %26, align 1
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 97, %27
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** @dtable, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 26, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 %29, i8* %34, align 1
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %16

38:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 48, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** @dtable, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 52, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8 %45, i8* %50, align 1
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i8*, i8** @dtable, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 62
  store i8 43, i8* %56, align 1
  %57 = load i8*, i8** @dtable, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 63
  store i8 47, i8* %58, align 1
  br label %59

59:                                               ; preds = %178, %54
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %179

63:                                               ; preds = %59
  %64 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %65, align 1
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %66, align 1
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %90, %63
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %5, align 8
  %73 = load i8, i8* %71, align 1
  %74 = sext i8 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %70
  store i32 1, i32* %8, align 4
  br label %93

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 %88
  store i8 %86, i8* %89, align 1
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %67

93:                                               ; preds = %83, %67
  %94 = load i32, i32* %13, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %178

96:                                               ; preds = %93
  %97 = load i8*, i8** @dtable, align 8
  %98 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = ashr i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %97, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 %104, i8* %105, align 1
  %106 = load i8*, i8** @dtable, align 8
  %107 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 3
  %111 = shl i32 %110, 4
  %112 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = ashr i32 %114, 4
  %116 = or i32 %111, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %106, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  store i8 %119, i8* %120, align 1
  %121 = load i8*, i8** @dtable, align 8
  %122 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 15
  %126 = shl i32 %125, 2
  %127 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = ashr i32 %129, 6
  %131 = or i32 %126, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %121, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 %134, i8* %135, align 1
  %136 = load i8*, i8** @dtable, align 8
  %137 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, 63
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %136, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 %143, i8* %144, align 1
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 3
  br i1 %146, label %147, label %154

147:                                              ; preds = %96
  %148 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 61, i8* %148, align 1
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 61, i8* %152, align 1
  br label %153

153:                                              ; preds = %151, %147
  br label %154

154:                                              ; preds = %153, %96
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %174, %154
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load %struct.buffer_st*, %struct.buffer_st** %4, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = call i32 @buffer_add(%struct.buffer_st* %159, i8 signext %163)
  %165 = load %struct.buffer_st*, %struct.buffer_st** %4, align 8
  %166 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = srem i32 %167, 72
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %158
  %171 = load %struct.buffer_st*, %struct.buffer_st** %4, align 8
  %172 = call i32 @buffer_add(%struct.buffer_st* %171, i8 signext 10)
  br label %173

173:                                              ; preds = %170, %158
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %155

177:                                              ; preds = %155
  br label %178

178:                                              ; preds = %177, %93
  br label %59

179:                                              ; preds = %59
  %180 = load %struct.buffer_st*, %struct.buffer_st** %4, align 8
  %181 = call i32 @buffer_add(%struct.buffer_st* %180, i8 signext 10)
  ret void
}

declare dso_local i32 @buffer_new(%struct.buffer_st*) #1

declare dso_local i32 @buffer_add(%struct.buffer_st*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
