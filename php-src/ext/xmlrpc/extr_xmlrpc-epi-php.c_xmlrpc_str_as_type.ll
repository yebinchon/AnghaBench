; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_xmlrpc_str_as_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_xmlrpc_str_as_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XMLRPC_TYPE_COUNT = common dso_local global i32 0, align 4
@xmlrpc_none = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlrpc_str_as_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i8** (...) @get_type_str_mapping()
  store i8** %6, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @XMLRPC_TYPE_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i8**, i8*** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcmp(i8* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* @xmlrpc_none, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i8** @get_type_str_mapping(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
