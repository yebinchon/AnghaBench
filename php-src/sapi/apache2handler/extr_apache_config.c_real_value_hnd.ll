; ModuleID = '/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_apache_config.c_real_value_hnd.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_apache_config.c_real_value_hnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Getting %s=%s for %p (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RSRC_CONF = common dso_local global i32 0, align 4
@ACCESS_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i8*, i8*, i8*, i32)* @real_value_hnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @real_value_hnd(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %11, align 8
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @zend_hash_num_elements(i32* %20)
  %22 = call i32 @phpapdebug(i32 %21)
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @strncasecmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %27

27:                                               ; preds = %26, %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @apr_pstrdup(i32 %30, i8* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RSRC_CONF, align 4
  %43 = load i32, i32* @ACCESS_CONF, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = call i32 @zend_hash_str_update_mem(i32* %50, i8* %51, i32 %53, %struct.TYPE_6__* %12, i32 16)
  ret i8* null
}

declare dso_local i32 @phpapdebug(i32) #1

declare dso_local i32 @zend_hash_num_elements(i32*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zend_hash_str_update_mem(i32*, i8*, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
