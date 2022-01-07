; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_err_msg_dispose.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_err_msg_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.err_s = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @err_msg_dispose(%struct.err_s* %0) #0 {
  %2 = alloca %struct.err_s*, align 8
  store %struct.err_s* %0, %struct.err_s** %2, align 8
  %3 = load %struct.err_s*, %struct.err_s** %2, align 8
  %4 = getelementptr inbounds %struct.err_s, %struct.err_s* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.err_s*, %struct.err_s** %2, align 8
  %9 = getelementptr inbounds %struct.err_s, %struct.err_s* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.err_s*, %struct.err_s** %2, align 8
  %12 = getelementptr inbounds %struct.err_s, %struct.err_s* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @php_error_docref(i32* null, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = load %struct.err_s*, %struct.err_s** %2, align 8
  %16 = getelementptr inbounds %struct.err_s, %struct.err_s* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load %struct.err_s*, %struct.err_s** %2, align 8
  %21 = getelementptr inbounds %struct.err_s, %struct.err_s* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @efree(i32* %22)
  br label %24

24:                                               ; preds = %19, %7
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32*) #1

declare dso_local i32 @efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
