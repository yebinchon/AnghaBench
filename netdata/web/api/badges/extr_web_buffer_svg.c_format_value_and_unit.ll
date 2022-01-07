; ModuleID = '/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_format_value_and_unit.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_format_value_and_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.units_formatter = type { i8*, i64, i64 }

@UNITS_FORMAT_EMPTY = common dso_local global i64 0, align 8
@UNITS_FORMAT_HOURS = common dso_local global i64 0, align 8
@UNITS_FORMAT_HOURS_AGO = common dso_local global i64 0, align 8
@UNITS_FORMAT_MINUTES = common dso_local global i64 0, align 8
@UNITS_FORMAT_MINUTES_AGO = common dso_local global i64 0, align 8
@UNITS_FORMAT_NONE = common dso_local global i64 0, align 8
@UNITS_FORMAT_OKERROR = common dso_local global i64 0, align 8
@UNITS_FORMAT_OKFAILED = common dso_local global i64 0, align 8
@UNITS_FORMAT_ONOFF = common dso_local global i64 0, align 8
@UNITS_FORMAT_PERCENT = common dso_local global i64 0, align 8
@UNITS_FORMAT_SECONDS = common dso_local global i64 0, align 8
@UNITS_FORMAT_SECONDS_AGO = common dso_local global i64 0, align 8
@UNITS_FORMAT_UPDOWN = common dso_local global i64 0, align 8
@badge_units_formatters = common dso_local global %struct.units_formatter* null, align 8

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
