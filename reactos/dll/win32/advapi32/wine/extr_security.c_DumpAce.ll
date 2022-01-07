; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_DumpAce.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_DumpAce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@DumpAce.openbr = internal constant i8 40, align 1
@DumpAce.closebr = internal constant i8 41, align 1
@DumpAce.semicolon = internal constant i8 59, align 1
@ERROR_INVALID_ACL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SDDL_ACCESS_ALLOWED = common dso_local global i8* null, align 8
@SDDL_ACCESS_DENIED = common dso_local global i8* null, align 8
@SDDL_AUDIT = common dso_local global i8* null, align 8
@SDDL_ALARM = common dso_local global i8* null, align 8
@OBJECT_INHERIT_ACE = common dso_local global i32 0, align 4
@SDDL_OBJECT_INHERIT = common dso_local global i8* null, align 8
@CONTAINER_INHERIT_ACE = common dso_local global i32 0, align 4
@SDDL_CONTAINER_INHERIT = common dso_local global i8* null, align 8
@NO_PROPAGATE_INHERIT_ACE = common dso_local global i32 0, align 4
@SDDL_NO_PROPAGATE = common dso_local global i8* null, align 8
@INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@SDDL_INHERIT_ONLY = common dso_local global i8* null, align 8
@INHERITED_ACE = common dso_local global i32 0, align 4
@SDDL_INHERITED = common dso_local global i8* null, align 8
@SUCCESSFUL_ACCESS_ACE_FLAG = common dso_local global i32 0, align 4
@SDDL_AUDIT_SUCCESS = common dso_local global i8* null, align 8
@FAILED_ACCESS_ACE_FLAG = common dso_local global i32 0, align 4
@SDDL_AUDIT_FAILURE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8**, i32*)* @DumpAce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DumpAce(%struct.TYPE_8__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = bitcast %struct.TYPE_8__* %9 to %struct.TYPE_7__*
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 129
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = bitcast %struct.TYPE_8__* %15 to %struct.TYPE_7__*
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %25

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @ERROR_INVALID_ACL, align 4
  %23 = call i32 @SetLastError(i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %181

25:                                               ; preds = %14
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %8, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @DumpString(i8* @DumpAce.openbr, i32 1, i8** %27, i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %54 [
    i32 131, label %34
    i32 130, label %39
    i32 128, label %44
    i32 129, label %49
  ]

34:                                               ; preds = %25
  %35 = load i8*, i8** @SDDL_ACCESS_ALLOWED, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @DumpString(i8* %35, i32 -1, i8** %36, i32* %37)
  br label %54

39:                                               ; preds = %25
  %40 = load i8*, i8** @SDDL_ACCESS_DENIED, align 8
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @DumpString(i8* %40, i32 -1, i8** %41, i32* %42)
  br label %54

44:                                               ; preds = %25
  %45 = load i8*, i8** @SDDL_AUDIT, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @DumpString(i8* %45, i32 -1, i8** %46, i32* %47)
  br label %54

49:                                               ; preds = %25
  %50 = load i8*, i8** @SDDL_ALARM, align 8
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @DumpString(i8* %50, i32 -1, i8** %51, i32* %52)
  br label %54

54:                                               ; preds = %25, %49, %44, %39, %34
  %55 = load i8**, i8*** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @DumpString(i8* @DumpAce.semicolon, i32 1, i8** %55, i32* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OBJECT_INHERIT_ACE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i8*, i8** @SDDL_OBJECT_INHERIT, align 8
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @DumpString(i8* %66, i32 -1, i8** %67, i32* %68)
  br label %70

70:                                               ; preds = %65, %54
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CONTAINER_INHERIT_ACE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load i8*, i8** @SDDL_CONTAINER_INHERIT, align 8
  %80 = load i8**, i8*** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @DumpString(i8* %79, i32 -1, i8** %80, i32* %81)
  br label %83

83:                                               ; preds = %78, %70
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NO_PROPAGATE_INHERIT_ACE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i8*, i8** @SDDL_NO_PROPAGATE, align 8
  %93 = load i8**, i8*** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @DumpString(i8* %92, i32 -1, i8** %93, i32* %94)
  br label %96

96:                                               ; preds = %91, %83
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @INHERIT_ONLY_ACE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load i8*, i8** @SDDL_INHERIT_ONLY, align 8
  %106 = load i8**, i8*** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @DumpString(i8* %105, i32 -1, i8** %106, i32* %107)
  br label %109

109:                                              ; preds = %104, %96
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @INHERITED_ACE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load i8*, i8** @SDDL_INHERITED, align 8
  %119 = load i8**, i8*** %6, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @DumpString(i8* %118, i32 -1, i8** %119, i32* %120)
  br label %122

122:                                              ; preds = %117, %109
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SUCCESSFUL_ACCESS_ACE_FLAG, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i8*, i8** @SDDL_AUDIT_SUCCESS, align 8
  %132 = load i8**, i8*** %6, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @DumpString(i8* %131, i32 -1, i8** %132, i32* %133)
  br label %135

135:                                              ; preds = %130, %122
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @FAILED_ACCESS_ACE_FLAG, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load i8*, i8** @SDDL_AUDIT_FAILURE, align 8
  %145 = load i8**, i8*** %6, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @DumpString(i8* %144, i32 -1, i8** %145, i32* %146)
  br label %148

148:                                              ; preds = %143, %135
  %149 = load i8**, i8*** %6, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @DumpString(i8* @DumpAce.semicolon, i32 1, i8** %149, i32* %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i8**, i8*** %6, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @DumpRights(i32 %154, i8** %155, i32* %156)
  %158 = load i8**, i8*** %6, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @DumpString(i8* @DumpAce.semicolon, i32 1, i8** %158, i32* %159)
  %161 = load i8**, i8*** %6, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = call i32 @DumpString(i8* @DumpAce.semicolon, i32 1, i8** %161, i32* %162)
  %164 = load i8**, i8*** %6, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @DumpString(i8* @DumpAce.semicolon, i32 1, i8** %164, i32* %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = ptrtoint i32* %168 to i32
  %170 = load i8**, i8*** %6, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @DumpSid(i32 %169, i8** %170, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %148
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %4, align 4
  br label %181

176:                                              ; preds = %148
  %177 = load i8**, i8*** %6, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @DumpString(i8* @DumpAce.closebr, i32 1, i8** %177, i32* %178)
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %176, %174, %21
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @DumpString(i8*, i32, i8**, i32*) #1

declare dso_local i32 @DumpRights(i32, i8**, i32*) #1

declare dso_local i32 @DumpSid(i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
