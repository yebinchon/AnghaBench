; ModuleID = '/home/carl/AnghaBench/micropython/extmod/extr_modubinascii.c_mod_binascii_unhexlify.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/extr_modubinascii.c_mod_binascii_unhexlify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64 }

@MP_BUFFER_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"odd-length string\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"non-hex digit found\00", align 1
@mp_type_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_binascii_unhexlify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MP_BUFFER_READ, align 4
  %12 = call i32 @mp_get_buffer_raise(i32 %10, %struct.TYPE_7__* %3, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 2
  %23 = call i32 @vstr_init_len(%struct.TYPE_6__* %4, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %62, %19
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @unichar_isxdigit(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @unichar_xdigit_value(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %51

49:                                               ; preds = %35
  %50 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 4
  store i32 %57, i32* %7, align 4
  br label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %55
  br label %31

63:                                               ; preds = %31
  %64 = call i32 @mp_obj_new_str_from_vstr(i32* @mp_type_bytes, %struct.TYPE_6__* %4)
  ret i32 %64
}

declare dso_local i32 @mp_get_buffer_raise(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i32 @vstr_init_len(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @unichar_isxdigit(i32) #1

declare dso_local i64 @unichar_xdigit_value(i32) #1

declare dso_local i32 @mp_obj_new_str_from_vstr(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
