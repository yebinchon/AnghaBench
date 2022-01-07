; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_uri.c_coap_new_uri.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_uri.c_coap_new_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @coap_new_uri(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = add i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i64 @malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %41

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @URI_DATA(i8* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @memcpy(i8* %19, i8* %20, i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @URI_DATA(i8* %23)
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @URI_DATA(i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = call i64 @coap_split_uri(i8* %29, i32 %30, i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @free(i8* %36)
  store i32* null, i32** %3, align 8
  br label %41

38:                                               ; preds = %17
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %38, %35, %16
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @URI_DATA(i8*) #1

declare dso_local i64 @coap_split_uri(i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
