; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_read_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_read_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32*, i32* }
%struct.key_type = type { i32, i32 }
%struct.buffer = type { i32 }

@D_TLS_ERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TLS Error: error reading key from remote\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"TLS Error: key length mismatch, local cipher/hmac %d/%d, remote cipher/hmac %d/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_key(%struct.key* %0, %struct.key_type* %1, %struct.buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.key_type*, align 8
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %5, align 8
  store %struct.key_type* %1, %struct.key_type** %6, align 8
  store %struct.buffer* %2, %struct.buffer** %7, align 8
  %10 = load %struct.key*, %struct.key** %5, align 8
  %11 = bitcast %struct.key* %10 to { i32*, i32* }*
  %12 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %11, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @CLEAR(i32* %13, i32* %15)
  %17 = load %struct.buffer*, %struct.buffer** %7, align 8
  %18 = call i32 @buf_read(%struct.buffer* %17, i32* %8, i32 1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.buffer*, %struct.buffer** %7, align 8
  %23 = call i32 @buf_read(%struct.buffer* %22, i32* %9, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %58

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.key_type*, %struct.key_type** %6, align 8
  %29 = getelementptr inbounds %struct.key_type, %struct.key_type* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.key_type*, %struct.key_type** %6, align 8
  %35 = getelementptr inbounds %struct.key_type, %struct.key_type* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %61

39:                                               ; preds = %32
  %40 = load %struct.buffer*, %struct.buffer** %7, align 8
  %41 = load %struct.key*, %struct.key** %5, align 8
  %42 = getelementptr inbounds %struct.key, %struct.key* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @buf_read(%struct.buffer* %40, i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %58

48:                                               ; preds = %39
  %49 = load %struct.buffer*, %struct.buffer** %7, align 8
  %50 = load %struct.key*, %struct.key** %5, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @buf_read(%struct.buffer* %49, i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %58

57:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %72

58:                                               ; preds = %56, %47, %25, %20
  %59 = load i32, i32* @D_TLS_ERRORS, align 4
  %60 = call i32 (i32, i8*, ...) @msg(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %72

61:                                               ; preds = %38
  %62 = load i32, i32* @D_TLS_ERRORS, align 4
  %63 = load %struct.key_type*, %struct.key_type** %6, align 8
  %64 = getelementptr inbounds %struct.key_type, %struct.key_type* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.key_type*, %struct.key_type** %6, align 8
  %67 = getelementptr inbounds %struct.key_type, %struct.key_type* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32, i8*, ...) @msg(i32 %62, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %61, %58, %57
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @CLEAR(i32*, i32*) #1

declare dso_local i32 @buf_read(%struct.buffer*, i32*, i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
