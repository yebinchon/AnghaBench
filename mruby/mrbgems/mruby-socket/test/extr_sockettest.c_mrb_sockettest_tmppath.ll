; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/test/extr_sockettest.c_mrb_sockettest_tmppath.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/test/extr_sockettest.c_mrb_sockettest_tmppath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.mrb_sockettest_tmppath.name = private unnamed_addr constant [22 x i8] c"mruby-socket.XXXXXXXX\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_sockettest_tmppath(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [22 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [22 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @__const.mrb_sockettest_tmppath.name, i32 0, i32 0), i64 22, i1 false)
  %8 = getelementptr inbounds [22 x i8], [22 x i8]* %5, i64 0, i64 0
  %9 = call i32 @mkstemp(i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_sys_fail(i32* %13, i32 0)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @close(i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mrb_sys_fail(i32* %20, i32 0)
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds [22 x i8], [22 x i8]* %5, i64 0, i64 0
  %24 = call i32 @unlink(i8* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @mrb_sys_fail(i32* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds [22 x i8], [22 x i8]* %5, i64 0, i64 0
  %32 = call i32 @mrb_str_new_cstr(i32* %30, i8* %31)
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @mrb_sys_fail(i32*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
