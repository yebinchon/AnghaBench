; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_....asmarchi8080i8080dis.c_arg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_....asmarchi8080i8080dis.c_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_t = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.arg_t*, i32)* @arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg(i8* %0, i32 %1, %struct.arg_t* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg_t*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg_t* %2, %struct.arg_t** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.arg_t*, %struct.arg_t** %7, align 8
  %10 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %31

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.arg_t*, %struct.arg_t** %7, align 8
  %16 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.arg_t*, %struct.arg_t** %7, align 8
  %20 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %18, %21
  %23 = load %struct.arg_t*, %struct.arg_t** %7, align 8
  %24 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %17, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcat(i8* %14, i32 %29)
  br label %52

31:                                               ; preds = %4
  %32 = load %struct.arg_t*, %struct.arg_t** %7, align 8
  %33 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  %40 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %51

41:                                               ; preds = %31
  %42 = load %struct.arg_t*, %struct.arg_t** %7, align 8
  %43 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %50, %36
  br label %52

52:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
