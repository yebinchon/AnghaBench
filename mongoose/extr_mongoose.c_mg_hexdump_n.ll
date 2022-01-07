; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_hexdump_n.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_hexdump_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%04x \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32)* @mg_hexdump_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_hexdump_n(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [17 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  %18 = bitcast [17 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 17, i1 false)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %123, %5
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %126

23:                                               ; preds = %19
  %24 = load i32, i32* %14, align 4
  %25 = srem i32 %24, 16
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %16, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @MAX(i32 %38, i32 0)
  %40 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 0
  %41 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %31, %28
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %51, %52
  %54 = call i32 @MAX(i32 %53, i32 0)
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %46, %23
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 %64, %65
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %6, align 4
  br label %162

70:                                               ; preds = %63
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @MAX(i32 %77, i32 0)
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %74, i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %16, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp slt i32 %95, 32
  br i1 %96, label %105, label %97

97:                                               ; preds = %70
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sgt i32 %103, 126
  br i1 %104, label %105, label %106

105:                                              ; preds = %97, %70
  br label %113

106:                                              ; preds = %97
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  br label %113

113:                                              ; preds = %106, %105
  %114 = phi i32 [ 46, %105 ], [ %112, %106 ]
  %115 = trunc i32 %114 to i8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 %117
  store i8 %115, i8* %118, align 1
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 %121
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %19

126:                                              ; preds = %19
  br label %127

127:                                              ; preds = %132, %126
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = srem i32 %128, 16
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %137, %138
  %140 = call i32 @MAX(i32 %139, i32 0)
  %141 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %136, i32 %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %16, align 4
  br label %127

146:                                              ; preds = %127
  %147 = load i8*, i8** %9, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %16, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i32 @MAX(i32 %153, i32 0)
  %155 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 0
  %156 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %150, i32 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %155)
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %146, %68
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @MAX(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
