; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_PrintD2.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_PrintD2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SendRequest(), len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"    HEADER:\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"        opcode = %s, id = %d, rcode = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"        header flags:  query\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", want recursion\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"        questions = %d,  answers = %d,  authority records = %d,  additional = %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"    QUESTIONS:\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"        %s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c", type = %s, class = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"\0A------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintD2(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [255 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %15, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %15, align 4
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %15, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %15, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %15, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %15, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohs(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %15, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %15, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohs(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %15, align 4
  %76 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 (i32, ...) @_tprintf(i32 %76)
  %78 = call i32 @_T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i64, i64* %4, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i32, ...) @_tprintf(i32 %78, i32 %80)
  %82 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 (i32, ...) @_tprintf(i32 %82)
  %84 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, 120
  %87 = ashr i32 %86, 3
  %88 = call i32 @OpcodeIDtoOpcodeName(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 15
  %92 = call i32 @RCodeIDtoRCodeName(i32 %91)
  %93 = call i32 (i32, ...) @_tprintf(i32 %84, i32 %88, i32 %89, i32 %92)
  %94 = call i32 @_T(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %95 = call i32 (i32, ...) @_tprintf(i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %2
  %100 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %101 = call i32 (i32, ...) @_tprintf(i32 %100)
  br label %102

102:                                              ; preds = %99, %2
  %103 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %104 = call i32 (i32, ...) @_tprintf(i32 %103)
  %105 = call i32 @_T(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 (i32, ...) @_tprintf(i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %160

113:                                              ; preds = %102
  %114 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %115 = call i32 (i32, ...) @_tprintf(i32 %114)
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %156, %113
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %159

120:                                              ; preds = %116
  %121 = load i32*, i32** %3, align 8
  %122 = getelementptr inbounds [255 x i32], [255 x i32]* %14, i64 0, i64 0
  %123 = load i32, i32* %15, align 4
  %124 = call i64 @ExtractName(i32* %121, i32* %122, i32 %123, i32 0)
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %15, align 4
  %129 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %130 = getelementptr inbounds [255 x i32], [255 x i32]* %14, i64 0, i64 0
  %131 = call i32 (i32, ...) @_tprintf(i32 %129, i32* %130)
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ntohs(i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %15, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ntohs(i32 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %15, align 4
  %150 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @TypeIDtoTypeName(i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @ClassIDtoClassName(i32 %153)
  %155 = call i32 (i32, ...) @_tprintf(i32 %150, i32 %152, i32 %154)
  br label %156

156:                                              ; preds = %120
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %116

159:                                              ; preds = %116
  br label %160

160:                                              ; preds = %159, %102
  %161 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %162 = call i32 (i32, ...) @_tprintf(i32 %161)
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @OpcodeIDtoOpcodeName(i32) #1

declare dso_local i32 @RCodeIDtoRCodeName(i32) #1

declare dso_local i64 @ExtractName(i32*, i32*, i32, i32) #1

declare dso_local i32 @TypeIDtoTypeName(i32) #1

declare dso_local i32 @ClassIDtoClassName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
