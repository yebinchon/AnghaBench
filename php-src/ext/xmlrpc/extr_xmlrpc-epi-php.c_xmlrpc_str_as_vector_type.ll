; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_xmlrpc_str_as_vector_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_xmlrpc_str_as_vector_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XMLRPC_TYPE_COUNT = common dso_local global i32 0, align 4
@TYPE_STR_MAP_SIZE = common dso_local global i32 0, align 4
@xmlrpc_vector_none = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlrpc_str_as_vector_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i8** (...) @get_type_str_mapping()
  store i8** %6, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load i32, i32* @XMLRPC_TYPE_COUNT, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %29, %9
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TYPE_STR_MAP_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcmp(i8* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @XMLRPC_TYPE_COUNT, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %11

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* @xmlrpc_vector_none, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i8** @get_type_str_mapping(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
