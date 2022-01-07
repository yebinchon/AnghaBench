; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_setsockopt.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"o|io\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"level is not an integer\00", align 1
@IP_MULTICAST_TTL = common dso_local global i32 0, align 4
@IP_MULTICAST_LOOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"optval should be true, false, an integer, or a string\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Socket::Option\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"not an instance of Socket::Option\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"optname\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"wrong number of arguments (%i for 3)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_basicsocket_setsockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_basicsocket_setsockopt(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %8, i32* %9)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %82

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @mrb_fixnum_p(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %25 = call i32 @mrb_raise(i32* %23, i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @mrb_fixnum(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @mrb_string_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %81

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @mrb_true_p(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @mrb_false_p(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @mrb_test(i32 %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = bitcast i32* %11 to i8*
  %49 = call i32 @mrb_str_new(i32* %47, i8* %48, i32 4)
  store i32 %49, i32* %9, align 4
  br label %80

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @mrb_fixnum_p(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IP_MULTICAST_TTL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @IP_MULTICAST_LOOP, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @mrb_fixnum(i32 %63)
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %12, align 1
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @mrb_str_new(i32* %66, i8* %12, i32 1)
  store i32 %67, i32* %9, align 4
  br label %74

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mrb_fixnum(i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = bitcast i32* %13 to i8*
  %73 = call i32 @mrb_str_new(i32* %71, i8* %72, i32 4)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %68, %62
  br label %79

75:                                               ; preds = %50
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %78 = call i32 @mrb_raise(i32* %76, i32 %77, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %74
  br label %80

80:                                               ; preds = %79, %41
  br label %81

81:                                               ; preds = %80, %32
  br label %113

82:                                               ; preds = %2
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @mrb_obj_classname(i32* %86, i32 %87)
  %89 = call i64 @strcmp(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %94 = call i32 @mrb_raise(i32* %92, i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %85
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @mrb_funcall(i32* %96, i32 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %99 = call i32 @mrb_fixnum(i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @mrb_funcall(i32* %100, i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %103 = call i32 @mrb_fixnum(i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @mrb_funcall(i32* %104, i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store i32 %106, i32* %9, align 4
  br label %112

107:                                              ; preds = %82
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @mrb_raisef(i32* %108, i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %95
  br label %113

113:                                              ; preds = %112, %81
  %114 = load i32*, i32** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @socket_fd(i32* %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @RSTRING_PTR(i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @RSTRING_LEN(i32 %122)
  %124 = trunc i64 %123 to i32
  %125 = call i32 @setsockopt(i32 %117, i32 %118, i32 %119, i32 %121, i32 %124)
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %130

127:                                              ; preds = %113
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @mrb_sys_fail(i32* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %113
  %131 = call i32 @mrb_fixnum_value(i32 0)
  ret i32 %131
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @mrb_fixnum_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i64 @mrb_string_p(i32) #1

declare dso_local i64 @mrb_true_p(i32) #1

declare dso_local i64 @mrb_false_p(i32) #1

declare dso_local i64 @mrb_test(i32) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mrb_obj_classname(i32*, i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @socket_fd(i32*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
