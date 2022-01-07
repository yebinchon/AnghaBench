; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_freesec.c_setup_salt.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_freesec.c_setup_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_crypt_extended_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.php_crypt_extended_data*)* @setup_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_salt(i32 %0, %struct.php_crypt_extended_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.php_crypt_extended_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.php_crypt_extended_data* %1, %struct.php_crypt_extended_data** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %4, align 8
  %11 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %43

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %4, align 8
  %18 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  store i32 8388608, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %36, %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 24
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %4, align 8
  %42 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
