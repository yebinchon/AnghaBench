; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_element.c_create_xml_escape.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_element.c_create_xml_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8)* @create_xml_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_xml_escape(i8* %0, i8 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  store i8 38, i8* %10, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8 35, i8* %15, align 1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sge i32 %17, 100
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = sdiv i32 %21, 100
  %23 = add nsw i32 %22, 48
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 %24, i8* %29, align 1
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = srem i32 %31, 100
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %4, align 1
  br label %34

34:                                               ; preds = %19, %2
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = sdiv i32 %36, 10
  %38 = add nsw i32 %37, 48
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 %39, i8* %44, align 1
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i32
  %47 = srem i32 %46, 10
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %4, align 1
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, 48
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %57, align 1
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 59, i8* %62, align 1
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
