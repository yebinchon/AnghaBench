; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_brackpart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_brackpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i64, i64*, i32 }
%struct.state = type { i32 }
%struct.cvec = type { i32 }

@REG_ERANGE = common dso_local global i32 0, align 4
@REG_ECOLLATE = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_ECTYPE = common dso_local global i32 0, align 4
@REG_ASSERT = common dso_local global i32 0, align 4
@REG_UUNPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.state*, %struct.state*)* @brackpart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brackpart(%struct.vars* %0, %struct.state* %1, %struct.state* %2) #0 {
  %4 = alloca %struct.vars*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cvec*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca [1 x i64], align 8
  store %struct.vars* %0, %struct.vars** %4, align 8
  store %struct.state* %1, %struct.state** %5, align 8
  store %struct.state* %2, %struct.state** %6, align 8
  %13 = load %struct.vars*, %struct.vars** %4, align 8
  %14 = getelementptr inbounds %struct.vars, %struct.vars* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %119 [
    i32 128, label %16
    i32 129, label %19
    i32 131, label %41
    i32 130, label %59
    i32 132, label %91
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @REG_ERANGE, align 4
  %18 = call i32 @ERR(i32 %17)
  br label %189

19:                                               ; preds = %3
  %20 = load %struct.vars*, %struct.vars** %4, align 8
  %21 = getelementptr inbounds %struct.vars, %struct.vars* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  store i64 %22, i64* %23, align 8
  %24 = call i32 (...) @NEXT()
  %25 = call i64 @SEE(i32 128)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load %struct.vars*, %struct.vars** %4, align 8
  %29 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.state*, %struct.state** %5, align 8
  %32 = load %struct.state*, %struct.state** %6, align 8
  %33 = call i32 @onechr(%struct.vars* %28, i64 %30, %struct.state* %31, %struct.state* %32)
  br label %189

34:                                               ; preds = %19
  %35 = load %struct.vars*, %struct.vars** %4, align 8
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %37 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = call i64 @element(%struct.vars* %35, i64* %36, i64* %38)
  store i64 %39, i64* %7, align 8
  %40 = call i32 (...) @NOERR()
  br label %122

41:                                               ; preds = %3
  %42 = load %struct.vars*, %struct.vars** %4, align 8
  %43 = getelementptr inbounds %struct.vars, %struct.vars* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  store i64* %44, i64** %10, align 8
  %45 = load %struct.vars*, %struct.vars** %4, align 8
  %46 = call i64* @scanplain(%struct.vars* %45)
  store i64* %46, i64** %11, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = icmp ult i64* %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @REG_ECOLLATE, align 4
  %52 = call i32 @INSIST(i32 %50, i32 %51)
  %53 = call i32 (...) @NOERR()
  %54 = load %struct.vars*, %struct.vars** %4, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = call i64 @element(%struct.vars* %54, i64* %55, i64* %56)
  store i64 %57, i64* %7, align 8
  %58 = call i32 (...) @NOERR()
  br label %122

59:                                               ; preds = %3
  %60 = load %struct.vars*, %struct.vars** %4, align 8
  %61 = getelementptr inbounds %struct.vars, %struct.vars* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %10, align 8
  %63 = load %struct.vars*, %struct.vars** %4, align 8
  %64 = call i64* @scanplain(%struct.vars* %63)
  store i64* %64, i64** %11, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = icmp ult i64* %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @REG_ECOLLATE, align 4
  %70 = call i32 @INSIST(i32 %68, i32 %69)
  %71 = call i32 (...) @NOERR()
  %72 = load %struct.vars*, %struct.vars** %4, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = load i64*, i64** %11, align 8
  %75 = call i64 @element(%struct.vars* %72, i64* %73, i64* %74)
  store i64 %75, i64* %7, align 8
  %76 = call i32 (...) @NOERR()
  %77 = load %struct.vars*, %struct.vars** %4, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.vars*, %struct.vars** %4, align 8
  %80 = getelementptr inbounds %struct.vars, %struct.vars* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @REG_ICASE, align 4
  %83 = and i32 %81, %82
  %84 = call %struct.cvec* @eclass(%struct.vars* %77, i64 %78, i32 %83)
  store %struct.cvec* %84, %struct.cvec** %9, align 8
  %85 = call i32 (...) @NOERR()
  %86 = load %struct.vars*, %struct.vars** %4, align 8
  %87 = load %struct.cvec*, %struct.cvec** %9, align 8
  %88 = load %struct.state*, %struct.state** %5, align 8
  %89 = load %struct.state*, %struct.state** %6, align 8
  %90 = call i32 @subcolorcvec(%struct.vars* %86, %struct.cvec* %87, %struct.state* %88, %struct.state* %89)
  br label %189

91:                                               ; preds = %3
  %92 = load %struct.vars*, %struct.vars** %4, align 8
  %93 = getelementptr inbounds %struct.vars, %struct.vars* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  store i64* %94, i64** %10, align 8
  %95 = load %struct.vars*, %struct.vars** %4, align 8
  %96 = call i64* @scanplain(%struct.vars* %95)
  store i64* %96, i64** %11, align 8
  %97 = load i64*, i64** %10, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = icmp ult i64* %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* @REG_ECTYPE, align 4
  %102 = call i32 @INSIST(i32 %100, i32 %101)
  %103 = call i32 (...) @NOERR()
  %104 = load %struct.vars*, %struct.vars** %4, align 8
  %105 = load i64*, i64** %10, align 8
  %106 = load i64*, i64** %11, align 8
  %107 = load %struct.vars*, %struct.vars** %4, align 8
  %108 = getelementptr inbounds %struct.vars, %struct.vars* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @REG_ICASE, align 4
  %111 = and i32 %109, %110
  %112 = call %struct.cvec* @cclass(%struct.vars* %104, i64* %105, i64* %106, i32 %111)
  store %struct.cvec* %112, %struct.cvec** %9, align 8
  %113 = call i32 (...) @NOERR()
  %114 = load %struct.vars*, %struct.vars** %4, align 8
  %115 = load %struct.cvec*, %struct.cvec** %9, align 8
  %116 = load %struct.state*, %struct.state** %5, align 8
  %117 = load %struct.state*, %struct.state** %6, align 8
  %118 = call i32 @subcolorcvec(%struct.vars* %114, %struct.cvec* %115, %struct.state* %116, %struct.state* %117)
  br label %189

119:                                              ; preds = %3
  %120 = load i32, i32* @REG_ASSERT, align 4
  %121 = call i32 @ERR(i32 %120)
  br label %189

122:                                              ; preds = %41, %34
  %123 = call i64 @SEE(i32 128)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %122
  %126 = call i32 (...) @NEXT()
  %127 = load %struct.vars*, %struct.vars** %4, align 8
  %128 = getelementptr inbounds %struct.vars, %struct.vars* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %160 [
    i32 129, label %130
    i32 128, label %130
    i32 131, label %142
  ]

130:                                              ; preds = %125, %125
  %131 = load %struct.vars*, %struct.vars** %4, align 8
  %132 = getelementptr inbounds %struct.vars, %struct.vars* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  store i64 %133, i64* %134, align 8
  %135 = call i32 (...) @NEXT()
  %136 = load %struct.vars*, %struct.vars** %4, align 8
  %137 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %138 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  %140 = call i64 @element(%struct.vars* %136, i64* %137, i64* %139)
  store i64 %140, i64* %8, align 8
  %141 = call i32 (...) @NOERR()
  br label %163

142:                                              ; preds = %125
  %143 = load %struct.vars*, %struct.vars** %4, align 8
  %144 = getelementptr inbounds %struct.vars, %struct.vars* %143, i32 0, i32 2
  %145 = load i64*, i64** %144, align 8
  store i64* %145, i64** %10, align 8
  %146 = load %struct.vars*, %struct.vars** %4, align 8
  %147 = call i64* @scanplain(%struct.vars* %146)
  store i64* %147, i64** %11, align 8
  %148 = load i64*, i64** %10, align 8
  %149 = load i64*, i64** %11, align 8
  %150 = icmp ult i64* %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* @REG_ECOLLATE, align 4
  %153 = call i32 @INSIST(i32 %151, i32 %152)
  %154 = call i32 (...) @NOERR()
  %155 = load %struct.vars*, %struct.vars** %4, align 8
  %156 = load i64*, i64** %10, align 8
  %157 = load i64*, i64** %11, align 8
  %158 = call i64 @element(%struct.vars* %155, i64* %156, i64* %157)
  store i64 %158, i64* %8, align 8
  %159 = call i32 (...) @NOERR()
  br label %163

160:                                              ; preds = %125
  %161 = load i32, i32* @REG_ERANGE, align 4
  %162 = call i32 @ERR(i32 %161)
  br label %189

163:                                              ; preds = %142, %130
  br label %166

164:                                              ; preds = %122
  %165 = load i64, i64* %7, align 8
  store i64 %165, i64* %8, align 8
  br label %166

166:                                              ; preds = %164, %163
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* %8, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* @REG_UUNPORT, align 4
  %172 = call i32 @NOTE(i32 %171)
  br label %173

173:                                              ; preds = %170, %166
  %174 = load %struct.vars*, %struct.vars** %4, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load %struct.vars*, %struct.vars** %4, align 8
  %178 = getelementptr inbounds %struct.vars, %struct.vars* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @REG_ICASE, align 4
  %181 = and i32 %179, %180
  %182 = call %struct.cvec* @range(%struct.vars* %174, i64 %175, i64 %176, i32 %181)
  store %struct.cvec* %182, %struct.cvec** %9, align 8
  %183 = call i32 (...) @NOERR()
  %184 = load %struct.vars*, %struct.vars** %4, align 8
  %185 = load %struct.cvec*, %struct.cvec** %9, align 8
  %186 = load %struct.state*, %struct.state** %5, align 8
  %187 = load %struct.state*, %struct.state** %6, align 8
  %188 = call i32 @subcolorcvec(%struct.vars* %184, %struct.cvec* %185, %struct.state* %186, %struct.state* %187)
  br label %189

189:                                              ; preds = %173, %160, %119, %91, %59, %27, %16
  ret void
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i64 @SEE(i32) #1

declare dso_local i32 @onechr(%struct.vars*, i64, %struct.state*, %struct.state*) #1

declare dso_local i64 @element(%struct.vars*, i64*, i64*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i64* @scanplain(%struct.vars*) #1

declare dso_local i32 @INSIST(i32, i32) #1

declare dso_local %struct.cvec* @eclass(%struct.vars*, i64, i32) #1

declare dso_local i32 @subcolorcvec(%struct.vars*, %struct.cvec*, %struct.state*, %struct.state*) #1

declare dso_local %struct.cvec* @cclass(%struct.vars*, i64*, i64*, i32) #1

declare dso_local i32 @NOTE(i32) #1

declare dso_local %struct.cvec* @range(%struct.vars*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
