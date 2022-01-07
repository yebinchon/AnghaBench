; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_write_register.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@reg_cache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%x=\00", align 1
@CMD_WRITEREG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"command is too small\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbr_write_register(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [255 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %12 = bitcast [255 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 255, i1 false)
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %65

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @gdbr_lock_enter(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %61

21:                                               ; preds = %16
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg_cache, i32 0, i32 0), align 4
  %22 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %23 = load i8*, i8** @CMD_WRITEREG, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @snprintf(i8* %22, i32 254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %29, 255
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %61

33:                                               ; preds = %21
  %34 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @memcpy(i8* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = call i32 @pack_hex(i8* %41, i32 %42, i8* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %50 = call i64 @send_msg(i32* %48, i8* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store i32 -1, i32* %10, align 4
  br label %61

53:                                               ; preds = %33
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @read_packet(i32* %54, i32 0)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @handle_P(i32* %58)
  br label %60

60:                                               ; preds = %57, %53
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %52, %31, %20
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @gdbr_lock_leave(i32* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %15
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gdbr_lock_enter(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @eprintf(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @pack_hex(i8*, i32, i8*) #2

declare dso_local i64 @send_msg(i32*, i8*) #2

declare dso_local i64 @read_packet(i32*, i32) #2

declare dso_local i32 @handle_P(i32*) #2

declare dso_local i32 @gdbr_lock_leave(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
