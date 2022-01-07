; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_addrinfo_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_addrinfo_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, i64, %struct.addrinfo* }

@.str = private unnamed_addr constant [8 x i8] c"oo|oooi\00", align 1
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"nodename must be String or nil\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"service must be String, Fixnum, or nil\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_lastai\00", align 1
@E_SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"getaddrinfo: %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_addrinfo_getaddrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_addrinfo_getaddrinfo(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_ary_new(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @mrb_gc_arena_save(i32* %24)
  store i32 %25, i32* %18, align 4
  %26 = call i32 (...) @mrb_nil_value()
  store i32 %26, i32* %13, align 4
  store i32 %26, i32* %16, align 4
  store i32 %26, i32* %10, align 4
  store i64 0, i64* %17, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @mrb_get_args(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %15, i32* %10, i32* %16, i32* %13, i64* %17)
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @mrb_string_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i8* @RSTRING_CSTR(i32* %33, i32 %34)
  store i8* %35, i8** %20, align 8
  br label %46

36:                                               ; preds = %2
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @mrb_nil_p(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* null, i8** %20, align 8
  br label %45

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @E_TYPE_ERROR, align 4
  %44 = call i32 @mrb_raise(i32* %42, i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %40
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* %15, align 4
  %48 = call i64 @mrb_string_p(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i8* @RSTRING_CSTR(i32* %51, i32 %52)
  store i8* %53, i8** %21, align 8
  br label %74

54:                                               ; preds = %46
  %55 = load i32, i32* %15, align 4
  %56 = call i64 @mrb_fixnum_p(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @mrb_fixnum_to_str(i32* %59, i32 %60, i32 10)
  %62 = call i8* @RSTRING_PTR(i32 %61)
  store i8* %62, i8** %21, align 8
  br label %73

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @mrb_nil_p(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i8* null, i8** %21, align 8
  br label %72

68:                                               ; preds = %63
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @E_TYPE_ERROR, align 4
  %71 = call i32 @mrb_raise(i32* %69, i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %67
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %50
  %75 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 40)
  %76 = load i64, i64* %17, align 8
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @mrb_fixnum_p(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @mrb_fixnum(i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i32, i32* %16, align 4
  %89 = call i64 @mrb_fixnum_p(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %16, align 4
  %93 = call i64 @mrb_fixnum(i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @mrb_fixnum_p(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = call i64 @mrb_fixnum(i32 %101)
  %103 = trunc i64 %102 to i32
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @mrb_intern_lit(i32* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %110 = call i32 @mrb_cv_get(i32* %106, i32 %107, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i64 @mrb_cptr_p(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %105
  %115 = load i32, i32* %11, align 4
  %116 = call i64 @mrb_cptr(i32 %115)
  %117 = inttoptr i64 %116 to %struct.addrinfo*
  %118 = call i32 @freeaddrinfo(%struct.addrinfo* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @mrb_intern_lit(i32* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32 (...) @mrb_nil_value()
  %124 = call i32 @mrb_cv_set(i32* %119, i32 %120, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %114, %105
  %126 = load i8*, i8** %20, align 8
  %127 = load i8*, i8** %21, align 8
  %128 = call i32 @getaddrinfo(i8* %126, i8* %127, %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* @E_SOCKET_ERROR, align 4
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @gai_strerror(i32 %134)
  %136 = call i32 @mrb_raisef(i32* %132, i32 %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %131, %125
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @mrb_intern_lit(i32* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32*, i32** %3, align 8
  %143 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %144 = call i32 @mrb_cptr_value(i32* %142, %struct.addrinfo* %143)
  %145 = call i32 @mrb_cv_set(i32* %138, i32 %139, i32 %141, i32 %144)
  %146 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %146, %struct.addrinfo** %7, align 8
  br label %147

147:                                              ; preds = %183, %137
  %148 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %149 = icmp ne %struct.addrinfo* %148, null
  br i1 %149, label %150, label %187

150:                                              ; preds = %147
  %151 = load i32*, i32** %3, align 8
  %152 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %153 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i8*
  %156 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %157 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @mrb_str_new(i32* %151, i8* %155, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32*, i32** %3, align 8
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %164 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @mrb_fixnum_value(i32 %165)
  %167 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %168 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @mrb_fixnum_value(i32 %169)
  %171 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %172 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @mrb_fixnum_value(i32 %173)
  %175 = call i32 @mrb_funcall(i32* %160, i32 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 4, i32 %162, i32 %166, i32 %170, i32 %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32*, i32** %3, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @mrb_ary_push(i32* %176, i32 %177, i32 %178)
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* %18, align 4
  %182 = call i32 @mrb_gc_arena_restore(i32* %180, i32 %181)
  br label %183

183:                                              ; preds = %150
  %184 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %185 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %184, i32 0, i32 6
  %186 = load %struct.addrinfo*, %struct.addrinfo** %185, align 8
  store %struct.addrinfo* %186, %struct.addrinfo** %7, align 8
  br label %147

187:                                              ; preds = %147
  %188 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %189 = call i32 @freeaddrinfo(%struct.addrinfo* %188)
  %190 = load i32*, i32** %3, align 8
  %191 = load i32, i32* %4, align 4
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @mrb_intern_lit(i32* %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %194 = call i32 (...) @mrb_nil_value()
  %195 = call i32 @mrb_cv_set(i32* %190, i32 %191, i32 %193, i32 %194)
  %196 = load i32, i32* %9, align 4
  ret i32 %196
}

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @mrb_string_p(i32) #1

declare dso_local i8* @RSTRING_CSTR(i32*, i32) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @mrb_fixnum_p(i32) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_fixnum_to_str(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_cv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i64 @mrb_cptr_p(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i64 @mrb_cptr(i32) #1

declare dso_local i32 @mrb_cv_set(i32*, i32, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @mrb_cptr_value(i32*, %struct.addrinfo*) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
