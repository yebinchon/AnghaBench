; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_free_compiler.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_free_compiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { %struct.sljit_compiler*, %struct.sljit_compiler*, %struct.sljit_compiler*, %struct.sljit_compiler*, i8* }
%struct.sljit_memory_fragment = type { %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sljit_free_compiler(%struct.sljit_compiler* %0) #0 {
  %2 = alloca %struct.sljit_compiler*, align 8
  %3 = alloca %struct.sljit_memory_fragment*, align 8
  %4 = alloca %struct.sljit_memory_fragment*, align 8
  %5 = alloca i8*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %2, align 8
  %6 = load %struct.sljit_compiler*, %struct.sljit_compiler** %2, align 8
  %7 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %6, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @SLJIT_UNUSED_ARG(i8* %9)
  %11 = load %struct.sljit_compiler*, %struct.sljit_compiler** %2, align 8
  %12 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %11, i32 0, i32 3
  %13 = load %struct.sljit_compiler*, %struct.sljit_compiler** %12, align 8
  %14 = bitcast %struct.sljit_compiler* %13 to %struct.sljit_memory_fragment*
  store %struct.sljit_memory_fragment* %14, %struct.sljit_memory_fragment** %3, align 8
  br label %15

15:                                               ; preds = %18, %1
  %16 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %3, align 8
  %17 = icmp ne %struct.sljit_memory_fragment* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %3, align 8
  store %struct.sljit_memory_fragment* %19, %struct.sljit_memory_fragment** %4, align 8
  %20 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %3, align 8
  %21 = getelementptr inbounds %struct.sljit_memory_fragment, %struct.sljit_memory_fragment* %20, i32 0, i32 1
  %22 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %21, align 8
  store %struct.sljit_memory_fragment* %22, %struct.sljit_memory_fragment** %3, align 8
  %23 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @SLJIT_FREE(%struct.sljit_memory_fragment* %23, i8* %24)
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.sljit_compiler*, %struct.sljit_compiler** %2, align 8
  %28 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %27, i32 0, i32 2
  %29 = load %struct.sljit_compiler*, %struct.sljit_compiler** %28, align 8
  %30 = bitcast %struct.sljit_compiler* %29 to %struct.sljit_memory_fragment*
  store %struct.sljit_memory_fragment* %30, %struct.sljit_memory_fragment** %3, align 8
  br label %31

31:                                               ; preds = %34, %26
  %32 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %3, align 8
  %33 = icmp ne %struct.sljit_memory_fragment* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %3, align 8
  store %struct.sljit_memory_fragment* %35, %struct.sljit_memory_fragment** %4, align 8
  %36 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %3, align 8
  %37 = getelementptr inbounds %struct.sljit_memory_fragment, %struct.sljit_memory_fragment* %36, i32 0, i32 1
  %38 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %37, align 8
  store %struct.sljit_memory_fragment* %38, %struct.sljit_memory_fragment** %3, align 8
  %39 = load %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @SLJIT_FREE(%struct.sljit_memory_fragment* %39, i8* %40)
  br label %31

42:                                               ; preds = %31
  %43 = load %struct.sljit_compiler*, %struct.sljit_compiler** %2, align 8
  %44 = bitcast %struct.sljit_compiler* %43 to %struct.sljit_memory_fragment*
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @SLJIT_FREE(%struct.sljit_memory_fragment* %44, i8* %45)
  ret void
}

declare dso_local i32 @SLJIT_UNUSED_ARG(i8*) #1

declare dso_local i32 @SLJIT_FREE(%struct.sljit_memory_fragment*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
