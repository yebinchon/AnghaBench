; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil_cfg.c_esil_get_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil_cfg.c_esil_get_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @esil_get_op(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %13, %9, %2
  %22 = phi i1 [ false, %13 ], [ false, %9 ], [ false, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @r_return_val_if_fail(i32 %23, i32* null)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @sdb_hash(i8* %25)
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %28 = call i8* @sdb_itoa(i32 %26, i8* %27, i32 16)
  store i8* %28, i8** %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @sdb_num_get(i64 %31, i8* %32, i32 0)
  %34 = inttoptr i64 %33 to i32*
  ret i32* %34
}

declare dso_local i32 @r_return_val_if_fail(i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sdb_itoa(i32, i8*, i32) #1

declare dso_local i32 @sdb_hash(i8*) #1

declare dso_local i64 @sdb_num_get(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
