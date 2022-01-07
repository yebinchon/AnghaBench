; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_get_lib_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_get_lib_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_3__*)* @get_lib_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_lib_name(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8* %8, i8** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = bitcast [256 x i8]* %6 to i32*
  %14 = call i32 @r_buf_read_at(i32* %9, i32 %12, i32* %13, i32 256)
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %15, 256
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %3, align 8
  br label %23

21:                                               ; preds = %2
  %22 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
