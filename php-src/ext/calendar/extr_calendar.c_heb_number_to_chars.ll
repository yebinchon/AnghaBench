; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_calendar.c_heb_number_to_chars.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_calendar.c_heb_number_to_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alef_bet = common dso_local global i8* null, align 8
@CAL_JEWISH_ADD_ALAFIM_GERESH = common dso_local global i32 0, align 4
@CAL_JEWISH_ADD_ALAFIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" \E0\EC\F4\E9\ED \00", align 1
@CAL_JEWISH_ADD_GERESHAYIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8**)* @heb_number_to_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @heb_number_to_chars(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [18 x i8], align 16
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  store i8* %11, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 9999
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i8**, i8*** %7, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %4, align 8
  br label %176

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 1000
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load i8*, i8** @alef_bet, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 1000
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %8, align 8
  store i8 %29, i8* %30, align 1
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  %33 = load i32, i32* @CAL_JEWISH_ADD_ALAFIM_GERESH, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load i8*, i8** %8, align 8
  store i8 39, i8* %38, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %37, %23
  %42 = load i32, i32* @CAL_JEWISH_ADD_ALAFIM, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %10, align 8
  %53 = load i32, i32* %5, align 4
  %54 = srem i32 %53, 1000
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %19
  br label %56

56:                                               ; preds = %59, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp sge i32 %57, 400
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i8*, i8** @alef_bet, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 22
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %8, align 8
  store i8 %62, i8* %63, align 1
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 400
  store i32 %67, i32* %5, align 4
  br label %56

68:                                               ; preds = %56
  %69 = load i32, i32* %5, align 4
  %70 = icmp sge i32 %69, 100
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load i8*, i8** @alef_bet, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sdiv i32 %73, 100
  %75 = add nsw i32 18, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %8, align 8
  store i8 %78, i8* %79, align 1
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = srem i32 %82, 100
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %71, %68
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 15
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %90, label %106

90:                                               ; preds = %87, %84
  %91 = load i8*, i8** @alef_bet, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 9
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %8, align 8
  store i8 %93, i8* %94, align 1
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** @alef_bet, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 %98, 9
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %8, align 8
  store i8 %102, i8* %103, align 1
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %8, align 8
  br label %135

106:                                              ; preds = %87
  %107 = load i32, i32* %5, align 4
  %108 = icmp sge i32 %107, 10
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i8*, i8** @alef_bet, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sdiv i32 %111, 10
  %113 = add nsw i32 9, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %8, align 8
  store i8 %116, i8* %117, align 1
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  %120 = load i32, i32* %5, align 4
  %121 = srem i32 %120, 10
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %109, %106
  %123 = load i32, i32* %5, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i8*, i8** @alef_bet, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = load i8*, i8** %8, align 8
  store i8 %130, i8* %131, align 1
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  br label %134

134:                                              ; preds = %125, %122
  br label %135

135:                                              ; preds = %134, %90
  %136 = load i32, i32* @CAL_JEWISH_ADD_GERESHAYIM, align 4
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  switch i64 %145, label %151 [
    i64 0, label %146
    i64 1, label %147
  ]

146:                                              ; preds = %140
  br label %160

147:                                              ; preds = %140
  %148 = load i8*, i8** %8, align 8
  store i8 39, i8* %148, align 1
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %8, align 8
  br label %160

151:                                              ; preds = %140
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 -1
  %154 = load i8, i8* %153, align 1
  %155 = load i8*, i8** %8, align 8
  store i8 %154, i8* %155, align 1
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 -1
  store i8 34, i8* %157, align 1
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %8, align 8
  br label %160

160:                                              ; preds = %151, %147, %146
  br label %161

161:                                              ; preds = %160, %135
  %162 = load i8*, i8** %8, align 8
  store i8 0, i8* %162, align 1
  %163 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = add nsw i64 %168, 1
  %170 = trunc i64 %169 to i32
  %171 = call i8* @estrndup(i8* %163, i32 %170)
  %172 = load i8**, i8*** %7, align 8
  store i8* %171, i8** %172, align 8
  %173 = load i8**, i8*** %7, align 8
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %8, align 8
  %175 = load i8*, i8** %8, align 8
  store i8* %175, i8** %4, align 8
  br label %176

176:                                              ; preds = %161, %17
  %177 = load i8*, i8** %4, align 8
  ret i8* %177
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @estrndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
