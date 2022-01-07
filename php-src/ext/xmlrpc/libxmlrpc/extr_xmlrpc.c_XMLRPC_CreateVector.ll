; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_CreateVector.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_CreateVector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @XMLRPC_CreateVector(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %7 = call i32* (...) @XMLRPC_CreateValueEmpty()
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @XMLRPC_SetIsVector(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  store i8* null, i8** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @XMLRPC_SetValueID(i32* %19, i8* %20, i32 0)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* null, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32* null, i32** %5, align 8
  br label %25

25:                                               ; preds = %24, %18
  br label %26

26:                                               ; preds = %25, %15
  br label %28

27:                                               ; preds = %10
  store i32* null, i32** %5, align 8
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32*, i32** %5, align 8
  ret i32* %30
}

declare dso_local i32* @XMLRPC_CreateValueEmpty(...) #1

declare dso_local i64 @XMLRPC_SetIsVector(i32*, i32) #1

declare dso_local i8* @XMLRPC_SetValueID(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
