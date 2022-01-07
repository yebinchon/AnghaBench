; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysql_float_to_double.h_mysql_float_to_double.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysql_float_to_double.h_mysql_float_to_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CHAR_BUF_LEN = common dso_local global i32 0, align 4
@FLT_DIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (float, i32)* @mysql_float_to_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @mysql_float_to_double(float %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store float %0, float* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MAX_CHAR_BUF_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load float, float* %3, align 4
  %15 = load i32, i32* @FLT_DIG, align 4
  %16 = call i32 @php_gcvt(float %14, i32 %15, i8 signext 46, i8 signext 101, i8* %10)
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load float, float* %3, align 4
  %20 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18, float %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = call double @zend_strtod(i8* %10, i32* null)
  %23 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %23)
  ret double %22
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @php_gcvt(float, i32, i8 signext, i8 signext, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, float) #2

declare dso_local double @zend_strtod(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
