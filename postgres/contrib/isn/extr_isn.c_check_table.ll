; ModuleID = '/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_check_table.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_check_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"invalid table near {\22%s\22, \22%s\22} (pos: %d)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"index %d is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([2 x i8*]*, [2 x i32]*)* @check_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_table([2 x i8*]* %0, [2 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8*]*, align 8
  %5 = alloca [2 x i32]*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store [2 x i8*]* %0, [2 x i8*]** %4, align 8
  store [2 x i32]* %1, [2 x i32]** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load [2 x i8*]*, [2 x i8*]** %4, align 8
  %16 = icmp eq [2 x i8*]* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load [2 x i32]*, [2 x i32]** %5, align 8
  %19 = icmp eq [2 x i32]* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 1, i32* %3, align 4
  br label %191

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %167, %21
  %23 = load [2 x i8*]*, [2 x i8*]** %4, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 %25
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %26, i64 0, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load [2 x i8*]*, [2 x i8*]** %4, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %31, i64 %33
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %34, i64 0, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br label %38

38:                                               ; preds = %30, %22
  %39 = phi i1 [ false, %22 ], [ %37, %30 ]
  br i1 %39, label %40, label %170

40:                                               ; preds = %38
  %41 = load [2 x i8*]*, [2 x i8*]** %4, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %41, i64 %43
  %45 = getelementptr inbounds [2 x i8*], [2 x i8*]* %44, i64 0, i64 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %6, align 8
  %47 = load [2 x i8*]*, [2 x i8*]** %4, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i8*], [2 x i8*]* %47, i64 %49
  %51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %50, i64 0, i64 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @isdigit(i8 zeroext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isdigit(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57, %40
  br label %171

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 48
  store i32 %67, i32* %8, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %108, %63
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ false, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %113

84:                                               ; preds = %82
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @isdigit(i8 zeroext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @isdigit(i8 zeroext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %89, %84
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = load i8*, i8** %7, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %94
  %103 = load i8*, i8** %6, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 45
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %94
  br label %171

108:                                              ; preds = %102, %89
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %7, align 8
  br label %72

113:                                              ; preds = %82
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %171

122:                                              ; preds = %113
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %161

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %155, %126
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %158

132:                                              ; preds = %128
  %133 = load [2 x i32]*, [2 x i32]** %5, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %133, i64 %135
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %136, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %187

142:                                              ; preds = %132
  %143 = load [2 x i32]*, [2 x i32]** %5, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %143, i64 %145
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %146, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %14, align 4
  %151 = sub nsw i32 %149, %150
  %152 = icmp ne i32 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %142
  br label %187

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %128

158:                                              ; preds = %128
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %158, %122
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %171

167:                                              ; preds = %161
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %22

170:                                              ; preds = %38
  store i32 1, i32* %3, align 4
  br label %191

171:                                              ; preds = %166, %121, %107, %62
  %172 = load i32, i32* @DEBUG1, align 4
  %173 = load [2 x i8*]*, [2 x i8*]** %4, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [2 x i8*], [2 x i8*]* %173, i64 %175
  %177 = getelementptr inbounds [2 x i8*], [2 x i8*]* %176, i64 0, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = load [2 x i8*]*, [2 x i8*]** %4, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [2 x i8*], [2 x i8*]* %179, i64 %181
  %183 = getelementptr inbounds [2 x i8*], [2 x i8*]* %182, i64 0, i64 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 (i32, i8*, ...) @elog(i32 %172, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %178, i8* %184, i32 %185)
  store i32 0, i32* %3, align 4
  br label %191

187:                                              ; preds = %153, %141
  %188 = load i32, i32* @DEBUG1, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 (i32, i8*, ...) @elog(i32 %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %189)
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %187, %171, %170, %20
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
