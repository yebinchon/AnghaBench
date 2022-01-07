; ModuleID = '/home/carl/AnghaBench/php-src/ext/ldap/extr_ldap.c__php_ldap_controls_to_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ldap/extr_ldap.c__php_ldap_controls_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__**, i32*, i32)* @_php_ldap_controls_to_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_php_ldap_controls_to_array(i32* %0, %struct.TYPE_5__** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__**, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call i32* @zend_try_array_init(i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %43

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %18 = icmp eq %struct.TYPE_5__** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %43

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__** %21, %struct.TYPE_5__*** %10, align 8
  br label %22

22:                                               ; preds = %26, %20
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @_php_ldap_control_to_array(i32* %27, %struct.TYPE_5__* %29, i32* %9, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @add_assoc_zval(i32* %32, i32 %36, i32* %9)
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i32 1
  store %struct.TYPE_5__** %39, %struct.TYPE_5__*** %10, align 8
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %42 = call i32 @ldap_controls_free(%struct.TYPE_5__** %41)
  br label %43

43:                                               ; preds = %40, %19, %15
  ret void
}

declare dso_local i32* @zend_try_array_init(i32*) #1

declare dso_local i32 @_php_ldap_control_to_array(i32*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @add_assoc_zval(i32*, i32, i32*) #1

declare dso_local i32 @ldap_controls_free(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
