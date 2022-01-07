; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_ip_header_checksum.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_ip_header_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @ip_header_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_header_checksum(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %19, %20
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %3
  store i32 0, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %51, %27
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %40, %47
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 2
  store i32 %53, i32* %9, align 4
  br label %29

54:                                               ; preds = %29
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 65535
  %57 = load i32, i32* %8, align 4
  %58 = lshr i32 %57, 16
  %59 = add i32 %56, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 65535
  %62 = load i32, i32* %8, align 4
  %63 = lshr i32 %62, 16
  %64 = add i32 %61, %63
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 65535
  %67 = load i32, i32* %8, align 4
  %68 = lshr i32 %67, 16
  %69 = add i32 %66, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
