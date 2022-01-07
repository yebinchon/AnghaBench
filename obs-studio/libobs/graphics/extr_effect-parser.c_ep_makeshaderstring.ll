; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_makeshaderstring.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_makeshaderstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.dstr = type { i32 }
%struct.darray = type { %struct.cf_token* }
%struct.cf_token = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ep_func = type { i32 }
%struct.ep_param = type { i32 }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*, %struct.dstr*, %struct.darray*, %struct.darray*)* @ep_makeshaderstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_makeshaderstring(%struct.effect_parser* %0, %struct.dstr* %1, %struct.darray* %2, %struct.darray* %3) #0 {
  %5 = alloca %struct.effect_parser*, align 8
  %6 = alloca %struct.dstr*, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca %struct.darray*, align 8
  %9 = alloca %struct.cf_token*, align 8
  %10 = alloca %struct.cf_token*, align 8
  %11 = alloca %struct.ep_func*, align 8
  %12 = alloca %struct.dstr, align 4
  %13 = alloca %struct.ep_param*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %5, align 8
  store %struct.dstr* %1, %struct.dstr** %6, align 8
  store %struct.darray* %2, %struct.darray** %7, align 8
  store %struct.darray* %3, %struct.darray** %8, align 8
  %14 = load %struct.darray*, %struct.darray** %7, align 8
  %15 = getelementptr inbounds %struct.darray, %struct.darray* %14, i32 0, i32 0
  %16 = load %struct.cf_token*, %struct.cf_token** %15, align 8
  store %struct.cf_token* %16, %struct.cf_token** %9, align 8
  %17 = call i32 @dstr_init(%struct.dstr* %12)
  %18 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %19 = icmp ne %struct.cf_token* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %100

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %24 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CFTOKEN_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %30 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_whitespace(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %28, %22
  %37 = phi i1 [ false, %22 ], [ %35, %28 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %40 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %39, i32 1
  store %struct.cf_token* %40, %struct.cf_token** %9, align 8
  br label %22

41:                                               ; preds = %36
  %42 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %43 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CFTOKEN_NONE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %49 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %48, i32 0, i32 1
  %50 = call i64 @strref_cmp(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %41
  br label %100

53:                                               ; preds = %47
  %54 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  store %struct.cf_token* %54, %struct.cf_token** %10, align 8
  br label %55

55:                                               ; preds = %73, %53
  %56 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %57 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CFTOKEN_NONE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %63 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %64 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %63, i32 0, i32 1
  %65 = call %struct.ep_param* @ep_getparam_strref(%struct.effect_parser* %62, %struct.TYPE_5__* %64)
  store %struct.ep_param* %65, %struct.ep_param** %13, align 8
  %66 = load %struct.ep_param*, %struct.ep_param** %13, align 8
  %67 = icmp ne %struct.ep_param* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.dstr*, %struct.dstr** %6, align 8
  %70 = load %struct.ep_param*, %struct.ep_param** %13, align 8
  %71 = load %struct.darray*, %struct.darray** %8, align 8
  %72 = call i32 @ep_write_param(%struct.dstr* %69, %struct.ep_param* %70, %struct.darray* %71)
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %75 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %74, i32 0, i32 1
  %76 = call i32 @dstr_cat_strref(%struct.dstr* %12, %struct.TYPE_5__* %75)
  %77 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %78 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %77, i32 1
  store %struct.cf_token* %78, %struct.cf_token** %9, align 8
  br label %55

79:                                               ; preds = %55
  %80 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %81 = load %struct.cf_token*, %struct.cf_token** %10, align 8
  %82 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %81, i32 0, i32 1
  %83 = call %struct.ep_func* @ep_getfunc_strref(%struct.effect_parser* %80, %struct.TYPE_5__* %82)
  store %struct.ep_func* %83, %struct.ep_func** %11, align 8
  %84 = load %struct.ep_func*, %struct.ep_func** %11, align 8
  %85 = icmp ne %struct.ep_func* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %100

87:                                               ; preds = %79
  %88 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %89 = load %struct.dstr*, %struct.dstr** %6, align 8
  %90 = load %struct.ep_func*, %struct.ep_func** %11, align 8
  %91 = load %struct.darray*, %struct.darray** %8, align 8
  %92 = call i32 @ep_write_func(%struct.effect_parser* %88, %struct.dstr* %89, %struct.ep_func* %90, %struct.darray* %91)
  %93 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %94 = load %struct.dstr*, %struct.dstr** %6, align 8
  %95 = load %struct.ep_func*, %struct.ep_func** %11, align 8
  %96 = call i32 @ep_write_main(%struct.effect_parser* %93, %struct.dstr* %94, %struct.ep_func* %95, %struct.dstr* %12)
  %97 = call i32 @dstr_free(%struct.dstr* %12)
  %98 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %99 = call i32 @ep_reset_written(%struct.effect_parser* %98)
  br label %100

100:                                              ; preds = %87, %86, %52, %20
  ret void
}

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i64 @is_whitespace(i32) #1

declare dso_local i64 @strref_cmp(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.ep_param* @ep_getparam_strref(%struct.effect_parser*, %struct.TYPE_5__*) #1

declare dso_local i32 @ep_write_param(%struct.dstr*, %struct.ep_param*, %struct.darray*) #1

declare dso_local i32 @dstr_cat_strref(%struct.dstr*, %struct.TYPE_5__*) #1

declare dso_local %struct.ep_func* @ep_getfunc_strref(%struct.effect_parser*, %struct.TYPE_5__*) #1

declare dso_local i32 @ep_write_func(%struct.effect_parser*, %struct.dstr*, %struct.ep_func*, %struct.darray*) #1

declare dso_local i32 @ep_write_main(%struct.effect_parser*, %struct.dstr*, %struct.ep_func*, %struct.dstr*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @ep_reset_written(%struct.effect_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
