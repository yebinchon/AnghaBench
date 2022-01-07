; ModuleID = '/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_mod.c_CONF_modules_unload.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_mod.c_CONF_modules_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@supported_modules = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CONF_modules_unload(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @CONF_modules_finish()
  %6 = load i32*, i32** @supported_modules, align 8
  %7 = call i32 @sk_CONF_MODULE_num(i32* %6)
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = load i32*, i32** @supported_modules, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_4__* @sk_CONF_MODULE_value(i32* %13, i32 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20, %12
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %35

29:                                               ; preds = %25, %20
  %30 = load i32*, i32** @supported_modules, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @sk_CONF_MODULE_delete(i32* %30, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = call i32 @module_free(%struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %29, %28
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %3, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load i32*, i32** @supported_modules, align 8
  %40 = call i32 @sk_CONF_MODULE_num(i32* %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32*, i32** @supported_modules, align 8
  %44 = call i32 @sk_CONF_MODULE_free(i32* %43)
  store i32* null, i32** @supported_modules, align 8
  br label %45

45:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @CONF_modules_finish(...) #1

declare dso_local i32 @sk_CONF_MODULE_num(i32*) #1

declare dso_local %struct.TYPE_4__* @sk_CONF_MODULE_value(i32*, i32) #1

declare dso_local i32 @sk_CONF_MODULE_delete(i32*, i32) #1

declare dso_local i32 @module_free(%struct.TYPE_4__*) #1

declare dso_local i32 @sk_CONF_MODULE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
