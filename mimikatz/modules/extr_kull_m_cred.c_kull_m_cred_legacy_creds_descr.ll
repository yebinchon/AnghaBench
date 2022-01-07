; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_legacy_creds_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_legacy_creds_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 76, i32 69, i32 71, i32 65, i32 67, i32 89, i32 32, i32 67, i32 82, i32 69, i32 68, i32 69, i32 78, i32 84, i32 73, i32 65, i32 76, i32 83, i32 32, i32 71, i32 82, i32 79, i32 85, i32 80, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 115, i32 116, i32 114, i32 117, i32 99, i32 116, i32 83, i32 105, i32 122, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_cred_legacy_creds_descr(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = shl i32 %6, 1
  %8 = call i32 (i8*, i32, i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str to i8*), i32 %7, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %57

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.2 to i8*), i32 %13, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 %16, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 %21, 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.3 to i8*), i32 %22, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 %25, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %30, 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.4 to i8*), i32 %31, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %53, %11
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kull_m_cred_legacy_cred_descr(i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @kull_m_cred_legacy_cred_descr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
