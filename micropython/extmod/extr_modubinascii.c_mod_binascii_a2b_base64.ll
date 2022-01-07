; ModuleID = '/home/carl/AnghaBench/micropython/extmod/extr_modubinascii.c_mod_binascii_a2b_base64.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/extr_modubinascii.c_mod_binascii_a2b_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@MP_BUFFER_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"incorrect padding\00", align 1
@mp_type_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_binascii_a2b_base64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @MP_BUFFER_READ, align 4
  %14 = call i32 @mp_get_buffer_raise(i32 %12, %struct.TYPE_7__* %3, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 4
  %20 = mul nsw i32 %19, 3
  %21 = add nsw i32 %20, 1
  %22 = call i32 @vstr_init(%struct.TYPE_6__* %5, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %83, %1
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 61
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %39
  store i32 0, i32* %8, align 4
  br label %86

49:                                               ; preds = %45, %42
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @mod_binascii_sextet(i8 signext %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %83

59:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, 6
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 6
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 8
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 8
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %71, %72
  %74 = and i32 %73, 255
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8 %75, i8* %81, align 1
  br label %82

82:                                               ; preds = %68, %59
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %10, align 8
  br label %26

86:                                               ; preds = %48, %26
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = call i32 @mp_obj_new_str_from_vstr(i32* @mp_type_bytes, %struct.TYPE_6__* %5)
  ret i32 %92
}

declare dso_local i32 @mp_get_buffer_raise(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @vstr_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mod_binascii_sextet(i8 signext) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i32 @mp_obj_new_str_from_vstr(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
