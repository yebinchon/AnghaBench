; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_pack.c_php_pack_copy_double.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_pack.c_php_pack_copy_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Copy64 = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, double)* @php_pack_copy_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_pack_copy_double(i32 %0, i8* %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca %union.Copy64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* %6, align 8
  %9 = bitcast %union.Copy64* %7 to double*
  store double %8, double* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = bitcast %union.Copy64* %7 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @php_pack_reverse_int64(i8* %14)
  %16 = bitcast %union.Copy64* %7 to i8**
  store i8* %15, i8** %16, align 8
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast %union.Copy64* %7 to double*
  %20 = call i32 @memcpy(i8* %18, double* %19, i32 8)
  ret void
}

declare dso_local i8* @php_pack_reverse_int64(i8*) #1

declare dso_local i32 @memcpy(i8*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
