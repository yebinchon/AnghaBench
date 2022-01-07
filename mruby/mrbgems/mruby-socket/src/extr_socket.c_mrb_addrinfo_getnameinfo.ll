; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_addrinfo_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_addrinfo_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"|i\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"@sockaddr\00", align 1
@E_SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid sockaddr\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"getnameinfo: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_addrinfo_getnameinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_addrinfo_getnameinfo(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %5)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @NI_MAXHOST, align 4
  %15 = call i32 @mrb_str_buf_new(i32* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @NI_MAXSERV, align 4
  %18 = call i32 @mrb_str_buf_new(i32* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @mrb_intern_lit(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @mrb_iv_get(i32* %19, i32 %20, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mrb_string_p(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @E_SOCKET_ERROR, align 4
  %30 = call i32 @mrb_raise(i32* %28, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @RSTRING_PTR(i32 %32)
  %34 = inttoptr i64 %33 to %struct.sockaddr*
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @RSTRING_LEN(i32 %35)
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @RSTRING_PTR(i32 %38)
  %40 = load i32, i32* @NI_MAXHOST, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @RSTRING_PTR(i32 %41)
  %43 = load i32, i32* @NI_MAXSERV, align 4
  %44 = load i64, i64* %5, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @getnameinfo(%struct.sockaddr* %34, i32 %37, i64 %39, i32 %40, i64 %42, i32 %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %31
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @E_SOCKET_ERROR, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @gai_strerror(i32 %52)
  %54 = call i32 @mrb_raisef(i32* %50, i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %31
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @mrb_ary_new_capa(i32* %56, i32 2)
  store i32 %57, i32* %6, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @RSTRING_PTR(i32 %60)
  %62 = call i32 @strlen(i64 %61)
  %63 = call i32 @mrb_str_resize(i32* %58, i32 %59, i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @mrb_ary_push(i32* %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @RSTRING_PTR(i32 %70)
  %72 = call i32 @strlen(i64 %71)
  %73 = call i32 @mrb_str_resize(i32* %68, i32 %69, i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @mrb_ary_push(i32* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*) #1

declare dso_local i32 @mrb_str_buf_new(i32*, i32) #1

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i64, i32, i64, i32, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
