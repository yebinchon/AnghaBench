; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_cclass.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_cclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvec = type { i32 }
%struct.vars = type { i32 }

@classNames = common dso_local global i8** null, align 8
@REG_ECTYPE = common dso_local global i32 0, align 4
@pg_wc_isprint = common dso_local global i32 0, align 4
@pg_wc_isalnum = common dso_local global i32 0, align 4
@pg_wc_isalpha = common dso_local global i32 0, align 4
@pg_wc_isdigit = common dso_local global i32 0, align 4
@pg_wc_ispunct = common dso_local global i32 0, align 4
@pg_wc_isspace = common dso_local global i32 0, align 4
@pg_wc_islower = common dso_local global i32 0, align 4
@pg_wc_isupper = common dso_local global i32 0, align 4
@pg_wc_isgraph = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvec* (%struct.vars*, i32*, i32*, i32)* @cclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvec* @cclass(%struct.vars* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.cvec*, align 8
  %6 = alloca %struct.vars*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.cvec*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cvec* null, %struct.cvec** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  store i64 %20, i64* %10, align 8
  store i32 -1, i32* %14, align 4
  %21 = load i8**, i8*** @classNames, align 8
  store i8** %21, i8*** %12, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %42, %4
  %23 = load i8**, i8*** %12, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i8**, i8*** %12, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = load i64, i64* %10, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i8**, i8*** %12, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @pg_char_and_wchar_strncmp(i8* %34, i32* %35, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %14, align 4
  br label %47

41:                                               ; preds = %32, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i8**, i8*** %12, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %22

47:                                               ; preds = %39, %22
  %48 = load i32, i32* %14, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @REG_ECTYPE, align 4
  %52 = call i32 @ERR(i32 %51)
  store %struct.cvec* null, %struct.cvec** %5, align 8
  br label %145

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 133
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 129
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  store i32 139, i32* %14, align 4
  br label %63

63:                                               ; preds = %62, %59, %53
  %64 = load i32, i32* %14, align 4
  switch i32 %64, label %137 [
    i32 132, label %65
    i32 140, label %69
    i32 139, label %73
    i32 138, label %77
    i32 137, label %86
    i32 136, label %93
    i32 135, label %100
    i32 131, label %104
    i32 128, label %108
    i32 130, label %121
    i32 133, label %125
    i32 129, label %129
    i32 134, label %133
  ]

65:                                               ; preds = %63
  %66 = load i32, i32* @pg_wc_isprint, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call %struct.cvec* @pg_ctype_get_cache(i32 %66, i32 %67)
  store %struct.cvec* %68, %struct.cvec** %11, align 8
  br label %137

69:                                               ; preds = %63
  %70 = load i32, i32* @pg_wc_isalnum, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call %struct.cvec* @pg_ctype_get_cache(i32 %70, i32 %71)
  store %struct.cvec* %72, %struct.cvec** %11, align 8
  br label %137

73:                                               ; preds = %63
  %74 = load i32, i32* @pg_wc_isalpha, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call %struct.cvec* @pg_ctype_get_cache(i32 %74, i32 %75)
  store %struct.cvec* %76, %struct.cvec** %11, align 8
  br label %137

77:                                               ; preds = %63
  %78 = load %struct.vars*, %struct.vars** %6, align 8
  %79 = call %struct.cvec* @getcvec(%struct.vars* %78, i32 0, i32 1)
  store %struct.cvec* %79, %struct.cvec** %11, align 8
  %80 = load %struct.cvec*, %struct.cvec** %11, align 8
  %81 = icmp ne %struct.cvec* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.cvec*, %struct.cvec** %11, align 8
  %84 = call i32 @addrange(%struct.cvec* %83, i8 signext 0, float 1.270000e+02)
  br label %85

85:                                               ; preds = %82, %77
  br label %137

86:                                               ; preds = %63
  %87 = load %struct.vars*, %struct.vars** %6, align 8
  %88 = call %struct.cvec* @getcvec(%struct.vars* %87, i32 2, i32 0)
  store %struct.cvec* %88, %struct.cvec** %11, align 8
  %89 = load %struct.cvec*, %struct.cvec** %11, align 8
  %90 = call i32 @addchr(%struct.cvec* %89, i8 signext 9)
  %91 = load %struct.cvec*, %struct.cvec** %11, align 8
  %92 = call i32 @addchr(%struct.cvec* %91, i8 signext 32)
  br label %137

93:                                               ; preds = %63
  %94 = load %struct.vars*, %struct.vars** %6, align 8
  %95 = call %struct.cvec* @getcvec(%struct.vars* %94, i32 0, i32 2)
  store %struct.cvec* %95, %struct.cvec** %11, align 8
  %96 = load %struct.cvec*, %struct.cvec** %11, align 8
  %97 = call i32 @addrange(%struct.cvec* %96, i8 signext 0, float 3.100000e+01)
  %98 = load %struct.cvec*, %struct.cvec** %11, align 8
  %99 = call i32 @addrange(%struct.cvec* %98, i8 signext 127, float 1.590000e+02)
  br label %137

100:                                              ; preds = %63
  %101 = load i32, i32* @pg_wc_isdigit, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call %struct.cvec* @pg_ctype_get_cache(i32 %101, i32 %102)
  store %struct.cvec* %103, %struct.cvec** %11, align 8
  br label %137

104:                                              ; preds = %63
  %105 = load i32, i32* @pg_wc_ispunct, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call %struct.cvec* @pg_ctype_get_cache(i32 %105, i32 %106)
  store %struct.cvec* %107, %struct.cvec** %11, align 8
  br label %137

108:                                              ; preds = %63
  %109 = load %struct.vars*, %struct.vars** %6, align 8
  %110 = call %struct.cvec* @getcvec(%struct.vars* %109, i32 0, i32 3)
  store %struct.cvec* %110, %struct.cvec** %11, align 8
  %111 = load %struct.cvec*, %struct.cvec** %11, align 8
  %112 = icmp ne %struct.cvec* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.cvec*, %struct.cvec** %11, align 8
  %115 = call i32 @addrange(%struct.cvec* %114, i8 signext 48, float 5.700000e+01)
  %116 = load %struct.cvec*, %struct.cvec** %11, align 8
  %117 = call i32 @addrange(%struct.cvec* %116, i8 signext 97, float 1.020000e+02)
  %118 = load %struct.cvec*, %struct.cvec** %11, align 8
  %119 = call i32 @addrange(%struct.cvec* %118, i8 signext 65, float 7.000000e+01)
  br label %120

120:                                              ; preds = %113, %108
  br label %137

121:                                              ; preds = %63
  %122 = load i32, i32* @pg_wc_isspace, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call %struct.cvec* @pg_ctype_get_cache(i32 %122, i32 %123)
  store %struct.cvec* %124, %struct.cvec** %11, align 8
  br label %137

125:                                              ; preds = %63
  %126 = load i32, i32* @pg_wc_islower, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call %struct.cvec* @pg_ctype_get_cache(i32 %126, i32 %127)
  store %struct.cvec* %128, %struct.cvec** %11, align 8
  br label %137

129:                                              ; preds = %63
  %130 = load i32, i32* @pg_wc_isupper, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call %struct.cvec* @pg_ctype_get_cache(i32 %130, i32 %131)
  store %struct.cvec* %132, %struct.cvec** %11, align 8
  br label %137

133:                                              ; preds = %63
  %134 = load i32, i32* @pg_wc_isgraph, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call %struct.cvec* @pg_ctype_get_cache(i32 %134, i32 %135)
  store %struct.cvec* %136, %struct.cvec** %11, align 8
  br label %137

137:                                              ; preds = %63, %133, %129, %125, %121, %120, %104, %100, %93, %86, %85, %73, %69, %65
  %138 = load %struct.cvec*, %struct.cvec** %11, align 8
  %139 = icmp eq %struct.cvec* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @REG_ESPACE, align 4
  %142 = call i32 @ERR(i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.cvec*, %struct.cvec** %11, align 8
  store %struct.cvec* %144, %struct.cvec** %5, align 8
  br label %145

145:                                              ; preds = %143, %50
  %146 = load %struct.cvec*, %struct.cvec** %5, align 8
  ret %struct.cvec* %146
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @pg_char_and_wchar_strncmp(i8*, i32*, i64) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local %struct.cvec* @pg_ctype_get_cache(i32, i32) #1

declare dso_local %struct.cvec* @getcvec(%struct.vars*, i32, i32) #1

declare dso_local i32 @addrange(%struct.cvec*, i8 signext, float) #1

declare dso_local i32 @addchr(%struct.cvec*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
