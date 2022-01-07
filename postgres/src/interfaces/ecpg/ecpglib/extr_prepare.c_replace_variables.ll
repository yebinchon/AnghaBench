; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_replace_variables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_replace_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @replace_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_variables(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %186, %2
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %189

22:                                               ; preds = %13
  %23 = load i8**, i8*** %4, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 39
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = load i8**, i8*** %4, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 58
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load i8**, i8*** %4, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 63
  br i1 %56, label %57, label %58

57:                                               ; preds = %48, %36
  br label %186

58:                                               ; preds = %48, %39
  %59 = load i8**, i8*** %4, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 58
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load i8**, i8*** %4, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 58
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %8, align 4
  br label %185

80:                                               ; preds = %67, %58
  %81 = load i32, i32* @CHAR_BIT, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 4, %82
  %84 = mul i64 %83, 10
  %85 = udiv i64 %84, 3
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @ecpg_alloc(i32 %87, i32 %88)
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %11, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %190

93:                                               ; preds = %80
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = call i32 @snprintf(i8* %94, i32 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %96)
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %124, %93
  %100 = load i8**, i8*** %4, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %99
  %111 = load i8**, i8*** %4, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = call i64 @isvarchar(i8 signext %118)
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %110, %99
  %122 = phi i1 [ false, %99 ], [ %120, %110 ]
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %99

127:                                              ; preds = %121
  %128 = load i8**, i8*** %4, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = add nsw i32 %132, %134
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %5, align 4
  %138 = call i64 @ecpg_alloc(i32 %136, i32 %137)
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %12, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %127
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @ecpg_free(i8* %142)
  store i32 0, i32* %3, align 4
  br label %190

144:                                              ; preds = %127
  %145 = load i8*, i8** %12, align 8
  %146 = load i8**, i8*** %4, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @memcpy(i8* %145, i8* %147, i32 %148)
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @strcpy(i8* %153, i8* %154)
  %156 = load i8*, i8** %12, align 8
  %157 = load i8**, i8*** %4, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = call i32 @strcat(i8* %156, i8* %164)
  %166 = load i8**, i8*** %4, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @ecpg_free(i8* %167)
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @ecpg_free(i8* %169)
  %171 = load i8*, i8** %12, align 8
  %172 = load i8**, i8*** %4, align 8
  store i8* %171, i8** %172, align 8
  %173 = load i8**, i8*** %4, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %144
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %181, %144
  br label %185

185:                                              ; preds = %184, %77
  br label %186

186:                                              ; preds = %185, %57
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %13

189:                                              ; preds = %13
  store i32 1, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %141, %92
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i64 @ecpg_alloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @isvarchar(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ecpg_free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
