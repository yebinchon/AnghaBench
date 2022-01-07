; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_read_config_string.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_read_config_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32 }
%struct.env_set = type { i32 }
%struct.buffer = type { i32 }

@OPTION_LINE_SIZE = common dso_local global i32 0, align 4
@MAX_PARMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.options*, i8*, i32, i32, i32*, %struct.env_set*)* @read_config_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_config_string(i8* %0, %struct.options* %1, i8* %2, i32 %3, i32 %4, i32* %5, %struct.env_set* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.options*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.env_set*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buffer, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store %struct.options* %1, %struct.options** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store %struct.env_set* %6, %struct.env_set** %14, align 8
  %21 = load i32, i32* @OPTION_LINE_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @buf_set_read(%struct.buffer* %17, i32* %26, i32 %28)
  br label %30

30:                                               ; preds = %66, %7
  %31 = trunc i64 %22 to i32
  %32 = call i64 @buf_parse(%struct.buffer* %17, i8 signext 10, i8* %24, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load i32, i32* @MAX_PARMS, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %19, align 8
  %39 = alloca i8*, i64 %37, align 16
  store i64 %37, i64* %20, align 8
  %40 = call i32 @CLEAR(i8** %39)
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %18, align 4
  %43 = call i64 @SIZE(i8** %39)
  %44 = sub nsw i64 %43, 1
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.options*, %struct.options** %9, align 8
  %49 = getelementptr inbounds %struct.options, %struct.options* %48, i32 0, i32 0
  %50 = call i64 @parse_line(i8* %24, i8** %39, i64 %44, i8* %45, i32 %46, i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %34
  %53 = getelementptr inbounds i8*, i8** %39, i64 0
  %54 = call i32 @bypass_doubledash(i8** %53)
  %55 = load %struct.options*, %struct.options** %9, align 8
  %56 = getelementptr inbounds %struct.options, %struct.options* %55, i32 0, i32 0
  %57 = call i32 @check_inline_file_via_buf(%struct.buffer* %17, i8** %39, i32* %56)
  %58 = load %struct.options*, %struct.options** %9, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load %struct.env_set*, %struct.env_set** %14, align 8
  %65 = call i32 @add_option(%struct.options* %58, i8** %39, i8* %59, i32 %60, i32 0, i32 %61, i32 %62, i32* %63, %struct.env_set* %64)
  br label %66

66:                                               ; preds = %52, %34
  %67 = call i32 @CLEAR(i8** %39)
  %68 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %68)
  br label %30

69:                                               ; preds = %30
  %70 = trunc i64 %22 to i32
  %71 = call i32 @secure_memzero(i8* %24, i32 %70)
  %72 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %72)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @buf_set_read(%struct.buffer*, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @buf_parse(%struct.buffer*, i8 signext, i8*, i32) #2

declare dso_local i32 @CLEAR(i8**) #2

declare dso_local i64 @parse_line(i8*, i8**, i64, i8*, i32, i32, i32*) #2

declare dso_local i64 @SIZE(i8**) #2

declare dso_local i32 @bypass_doubledash(i8**) #2

declare dso_local i32 @check_inline_file_via_buf(%struct.buffer*, i8**, i32*) #2

declare dso_local i32 @add_option(%struct.options*, i8**, i8*, i32, i32, i32, i32, i32*, %struct.env_set*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @secure_memzero(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
